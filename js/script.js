// GT DRINKS - JavaScript

// ===================================
// Navegação e Header
// ===================================

const header = document.getElementById('header');
const mobileMenuToggle = document.querySelector('.mobile-menu-toggle');
const navMenu = document.querySelector('.nav-menu');
const navLinks = document.querySelectorAll('.nav-link');

// Header scroll effect
window.addEventListener('scroll', () => {
    if (window.scrollY > 100) {
        header.classList.add('scrolled');
    } else {
        header.classList.remove('scrolled');
    }
});

// Mobile menu toggle
mobileMenuToggle.addEventListener('click', () => {
    mobileMenuToggle.classList.toggle('active');
    navMenu.classList.toggle('active');
    document.body.style.overflow = navMenu.classList.contains('active') ? 'hidden' : '';
});

// Smooth scroll e active link
navLinks.forEach(link => {
    link.addEventListener('click', (e) => {
        e.preventDefault();
        const targetId = link.getAttribute('href');
        const targetSection = document.querySelector(targetId);
        
        if (targetSection) {
            const headerHeight = header.offsetHeight;
            const targetPosition = targetSection.offsetTop - headerHeight;
            
            window.scrollTo({
                top: targetPosition,
                behavior: 'smooth'
            });
            
            // Fechar mobile menu
            mobileMenuToggle.classList.remove('active');
            navMenu.classList.remove('active');
            document.body.style.overflow = '';
        }
    });
});

// Active section highlighting
const sections = document.querySelectorAll('section[id]');

window.addEventListener('scroll', () => {
    const scrollPosition = window.scrollY + 150;
    
    sections.forEach(section => {
        const sectionTop = section.offsetTop;
        const sectionHeight = section.offsetHeight;
        const sectionId = section.getAttribute('id');
        const correspondingLink = document.querySelector(`.nav-link[href="#${sectionId}"]`);
        
        if (correspondingLink && scrollPosition >= sectionTop && scrollPosition < sectionTop + sectionHeight) {
            navLinks.forEach(link => link.classList.remove('active'));
            correspondingLink.classList.add('active');
        }
    });
});

// ===================================
// Counter Animation
// ===================================

const counters = document.querySelectorAll('.counter');
let countersActivated = false;

const animateCounters = () => {
    if (countersActivated) return;
    
    counters.forEach(counter => {
        const target = parseInt(counter.getAttribute('data-target'));
        const duration = 2000; // 2 segundos
        const increment = target / (duration / 16); // 60 FPS
        let current = 0;
        
        const updateCounter = () => {
            current += increment;
            if (current < target) {
                counter.textContent = Math.floor(current);
                requestAnimationFrame(updateCounter);
            } else {
                counter.textContent = target;
            }
        };
        
        updateCounter();
    });
    
    countersActivated = true;
};

// Ativar contadores quando a seção aparecer
const observerOptions = {
    threshold: 0.5
};

const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            animateCounters();
        }
    });
}, observerOptions);

const aboutSection = document.querySelector('.about-section');
if (aboutSection) {
    observer.observe(aboutSection);
}

// ===================================
// Gallery Filter - REMOVIDO
// ===================================

// Código comentado - filtros removidos para galeria simplificada
/*
const filterButtons = document.querySelectorAll('.filter-btn');
const galleryItems = document.querySelectorAll('.gallery-item');

filterButtons.forEach(button => {
    button.addEventListener('click', () => {
        filterButtons.forEach(btn => btn.classList.remove('active'));
        button.classList.add('active');
        
        const filterValue = button.getAttribute('data-filter');
        
        galleryItems.forEach(item => {
            if (filterValue === 'all') {
                item.style.display = 'block';
                setTimeout(() => {
                    item.style.opacity = '1';
                    item.style.transform = 'scale(1)';
                }, 10);
            } else {
                const itemCategory = item.getAttribute('data-category');
                if (itemCategory === filterValue) {
                    item.style.display = 'block';
                    setTimeout(() => {
                        item.style.opacity = '1';
                        item.style.transform = 'scale(1)';
                    }, 10);
                } else {
                    item.style.opacity = '0';
                    item.style.transform = 'scale(0.8)';
                    setTimeout(() => {
                        item.style.display = 'none';
                    }, 300);
                }
            }
        });
    });
});
*/

// ===================================
// Menu Tabs (Carta de Drinks) - REMOVIDO
// ===================================

// Código comentado - seção removida do site
/*
const menuTabs = document.querySelectorAll('.menu-tab');
const menuTabContents = document.querySelectorAll('.menu-tab-content');

menuTabs.forEach(tab => {
    tab.addEventListener('click', () => {
        const targetTab = tab.getAttribute('data-tab');
        
        // Remover active de todos os tabs
        menuTabs.forEach(t => t.classList.remove('active'));
        menuTabContents.forEach(content => content.classList.remove('active'));
        
        // Adicionar active ao tab clicado
        tab.classList.add('active');
        document.getElementById(targetTab).classList.add('active');
    });
});
*/

// ===================================
// Form Validation e Submissão
// ===================================

const quoteForm = document.getElementById('quoteForm');

// Máscara de telefone
const telefoneInput = document.getElementById('telefone');
if (telefoneInput) {
    telefoneInput.addEventListener('input', (e) => {
        let value = e.target.value.replace(/\D/g, '');
        
        if (value.length <= 11) {
            if (value.length <= 10) {
                value = value.replace(/(\d{2})(\d{4})(\d{0,4})/, '($1) $2-$3');
            } else {
                value = value.replace(/(\d{2})(\d{5})(\d{0,4})/, '($1) $2-$3');
            }
            e.target.value = value;
        } else {
            e.target.value = value.substring(0, 11).replace(/(\d{2})(\d{5})(\d{4})/, '($1) $2-$3');
        }
    });
}

// Submissão do formulário
if (quoteForm) {
    quoteForm.addEventListener('submit', (e) => {
        e.preventDefault();
        
        // Coletar dados do formulário
        const formData = {
            nome: document.getElementById('nome').value,
            email: document.getElementById('email').value,
            telefone: document.getElementById('telefone').value,
            data: document.getElementById('data').value,
            local: document.getElementById('local').value,
            tipo: document.getElementById('tipo').value,
            convidados: document.getElementById('convidados').value,
            mensagem: document.getElementById('mensagem').value
        };
        
        // Validações básicas
        if (!formData.nome || !formData.email || !formData.telefone) {
            alert('Por favor, preencha todos os campos obrigatórios.');
            return;
        }
        
        // Validar email
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(formData.email)) {
            alert('Por favor, insira um e-mail válido.');
            return;
        }
        
        // Aqui você pode integrar com um serviço de envio de e-mail
        // Por enquanto, vamos simular o envio
        console.log('Dados do formulário:', formData);
        
        // Criar mensagem para WhatsApp
        const whatsappMessage = `Olá! Gostaria de solicitar um orçamento:
        
Nome: ${formData.nome}
Email: ${formData.email}
Telefone: ${formData.telefone}
Data do Evento: ${formData.data}
Local: ${formData.local}
Tipo de Evento: ${formData.tipo}
Número de Convidados: ${formData.convidados}
Detalhes: ${formData.mensagem}`;
        
        const encodedMessage = encodeURIComponent(whatsappMessage);
        const whatsappNumber = '[NUMERO_WHATSAPP]'; // Substituir pelo número real
        const whatsappUrl = `https://wa.me/${whatsappNumber}?text=${encodedMessage}`;
        
        // Feedback visual
        const submitButton = quoteForm.querySelector('button[type="submit"]');
        const originalButtonText = submitButton.innerHTML;
        submitButton.innerHTML = '<span>Enviando...</span>';
        submitButton.disabled = true;
        
        // Simular envio
        setTimeout(() => {
            alert('Solicitação enviada com sucesso! Em breve entraremos em contato.');
            quoteForm.reset();
            submitButton.innerHTML = originalButtonText;
            submitButton.disabled = false;
            
            // Opcional: abrir WhatsApp
            // window.open(whatsappUrl, '_blank');
        }, 1500);
    });
}

// ===================================
// Scroll Animations
// ===================================

const animateOnScroll = () => {
    const elements = document.querySelectorAll('.service-card, .feature-item, .drink-card, .gallery-item');
    
    const elementObserver = new IntersectionObserver((entries) => {
        entries.forEach((entry, index) => {
            if (entry.isIntersecting) {
                setTimeout(() => {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }, index * 100);
            }
        });
    }, {
        threshold: 0.1
    });
    
    elements.forEach(element => {
        element.style.opacity = '0';
        element.style.transform = 'translateY(30px)';
        element.style.transition = 'all 0.6s ease';
        elementObserver.observe(element);
    });
};

// Executar animações quando o DOM estiver pronto
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', animateOnScroll);
} else {
    animateOnScroll();
}

// ===================================
// Lazy Loading de Imagens
// ===================================

const lazyLoadImages = () => {
    const images = document.querySelectorAll('img[data-src]');
    
    const imageObserver = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const img = entry.target;
                img.src = img.getAttribute('data-src');
                img.removeAttribute('data-src');
                imageObserver.unobserve(img);
            }
        });
    });
    
    images.forEach(img => imageObserver.observe(img));
};

lazyLoadImages();

// ===================================
// Prevenção de FOUC (Flash of Unstyled Content)
// ===================================

window.addEventListener('load', () => {
    document.body.classList.add('loaded');
});

// ===================================
// Scroll to Top ao clicar no logo
// ===================================

const logo = document.querySelector('.logo');
if (logo) {
    logo.addEventListener('click', (e) => {
        e.preventDefault();
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
}

// ===================================
// Acessibilidade - Navegação por teclado
// ===================================

document.addEventListener('keydown', (e) => {
    // ESC para fechar menu mobile
    if (e.key === 'Escape' && navMenu.classList.contains('active')) {
        mobileMenuToggle.classList.remove('active');
        navMenu.classList.remove('active');
        document.body.style.overflow = '';
    }
});

// ===================================
// Performance - Debounce para eventos de scroll
// ===================================

function debounce(func, wait) {
    let timeout;
    return function executedFunction(...args) {
        const later = () => {
            clearTimeout(timeout);
            func(...args);
        };
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
    };
}

// Aplicar debounce ao scroll
const debouncedScroll = debounce(() => {
    // Funções que dependem do scroll já estão otimizadas
}, 10);

window.addEventListener('scroll', debouncedScroll);

// ===================================
// Console Message
// ===================================

console.log('%c GT DRINKS ', 'background: #00ff88; color: #000; font-size: 20px; font-weight: bold; padding: 10px;');
console.log('%c Bartender & Coquetelaria Premium ', 'background: #000; color: #00ff88; font-size: 14px; padding: 5px;');


// ===================================
// Gallery Lightbox (Simple)
// ===================================

const galleryItems = document.querySelectorAll('.gallery-item');

galleryItems.forEach(item => {
    item.addEventListener('click', () => {
        const img = item.querySelector('.gallery-image');
        if (img) {
            // Simple alert - can be replaced with a proper lightbox library
            window.open(img.src, '_blank');
        }
    });
});

// ===================================
// WhatsApp Integration Update
// ===================================

// Update all WhatsApp links to use correct number
const whatsappNumber = '5571993161565';
const whatsappMessage = encodeURIComponent('Olá, tudo bem? Gostaria de mais informações sobre os serviços da GT Drinks');

// Update WhatsApp float button (already updated in HTML)

// Update form submission to redirect to WhatsApp (if form still exists)
const quoteForm = document.getElementById('quoteForm');
if (quoteForm) {
    quoteForm.addEventListener('submit', (e) => {
        e.preventDefault();
        
        // Redirect to WhatsApp
        const whatsappUrl = `https://wa.me/${whatsappNumber}?text=${whatsappMessage}`;
        window.open(whatsappUrl, '_blank');
    });
}

// ===================================
// Smooth Animations on Scroll
// ===================================

const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
};

const fadeInObserver = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.style.opacity = '1';
            entry.target.style.transform = 'translateY(0)';
        }
    });
}, observerOptions);

// Apply to gallery items and other elements
document.querySelectorAll('.gallery-item, .service-card, .feature-item').forEach(el => {
    el.style.opacity = '0';
    el.style.transform = 'translateY(20px)';
    el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
    fadeInObserver.observe(el);
});

console.log('%c GT DRINKS ', 'background: #00ff88; color: #000; font-size: 20px; font-weight: bold; padding: 10px;');
console.log('%c Site Atualizado com Fotografias Reais ', 'background: #000; color: #00ff88; font-size: 14px; padding: 5px;');
