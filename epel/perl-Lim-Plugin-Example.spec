Name:           perl-Lim-Plugin-Example
Version:        0.10
Release:        1%{?dist}
Summary:        Lim::Plugin::Example - Example plugin for Lim

Group:          Development/Libraries
License:        GPL+ or Artistic
URL:            http://your.repository.com/lim-plugin-example
Source0:        lim-plugin-example-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)

BuildArch:      noarch
BuildRequires:  perl(ExtUtils::MakeMaker)
# Needed for test
BuildRequires:  perl(Test::Simple)

Requires:  perl(:MODULE_COMPAT_%(eval "`%{__perl} -V:version`"; echo $version))

%description
Example plugin for Lim

%package -n perl-Lim-Plugin-Example-Common
Summary: Common perl libraries for Example Lim plugin
Group: Development/Libraries
Version: 0.10
%description -n perl-Lim-Plugin-Example-Common
Common perl libraries for Example Lim plugin.

%package -n perl-Lim-Plugin-Example-Server
Summary: Server perl libraries for Example Lim plugin
Group: Development/Libraries
Version: 0.10
%description -n perl-Lim-Plugin-Example-Server
Server perl libraries for Example Lim plugin.

%package -n perl-Lim-Plugin-Example-Client
Summary: Client perl libraries for Example Lim plugin
Group: Development/Libraries
Version: 0.10
%description -n perl-Lim-Plugin-Example-Client
Client perl libraries for communicating with the Example Lim plugin.

%package -n perl-Lim-Plugin-Example-CLI
Summary: CLI perl libraries for Example Lim plugin
Group: Development/Libraries
Version: 0.10
%description -n perl-Lim-Plugin-Example-CLI
CLI perl libraries for communicating with the Example Lim plugin.

%package -n lim-management-console-example
Requires: lim-management-console-common = 0.14
Summary: Example Lim plugin Management Console files
Group: Development/Libraries
Version: 0.10
%description -n lim-management-console-example
Example Lim plugin Management Console files.


%prep
%setup -q -n lim-plugin-example


%build
%{__perl} Makefile.PL INSTALLDIRS=vendor
make %{?_smp_mflags}


%install
rm -rf $RPM_BUILD_ROOT
make pure_install PERL_INSTALL_ROOT=$RPM_BUILD_ROOT
find $RPM_BUILD_ROOT -type f -name .packlist -exec rm -f {} ';'
mkdir -p %{buildroot}%{_datadir}/lim/html
mkdir -p %{buildroot}%{_datadir}/lim/html/_example
mkdir -p %{buildroot}%{_datadir}/lim/html/_example/js
install -m 644 %{_builddir}/lim-plugin-example/html/_example/index.html %{buildroot}%{_datadir}/lim/html/_example/index.html
install -m 644 %{_builddir}/lim-plugin-example/html/_example/js/application.js %{buildroot}%{_datadir}/lim/html/_example/js/application.js


%check
make test


%clean
rm -rf $RPM_BUILD_ROOT


%files -n perl-Lim-Plugin-Example-Common
%defattr(-,root,root,-)
%{_mandir}/man3/Lim::Plugin::Example.3*
%{perl_vendorlib}/Lim/Plugin/Example.pm

%files -n perl-Lim-Plugin-Example-Server
%defattr(-,root,root,-)
%{_mandir}/man3/Lim::Plugin::Example::Server.3*
%{perl_vendorlib}/Lim/Plugin/Example/Server.pm

%files -n perl-Lim-Plugin-Example-Client
%defattr(-,root,root,-)
%{_mandir}/man3/Lim::Plugin::Example::Client.3*
%{perl_vendorlib}/Lim/Plugin/Example/Client.pm

%files -n perl-Lim-Plugin-Example-CLI
%defattr(-,root,root,-)
%{_mandir}/man3/Lim::Plugin::Example::CLI.3*
%{perl_vendorlib}/Lim/Plugin/Example/CLI.pm

%files -n lim-management-console-example
%defattr(-,root,root,-)
%{_datadir}/lim/html/_example/index.html
%{_datadir}/lim/html/_example/js/application.js


%changelog
* Fri Aug 02 2013 Your Name < your.name@some.email.com > - 0.10-1
- Release 0.10
* Sat Aug 11 2012 Your Name < your.name@some.email.com > - 0.10-1
- Initial package for Fedora

