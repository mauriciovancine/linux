sudo apt-get install \
  build-essential \
  flex make bison gcc libgcc1 g++ ccache \
  python3 python3-dev \
  python3-opengl python3-wxgtk4.0 \
  python3-dateutil libgsl-dev python3-numpy \
  wx3.0-headers wx-common libwxgtk3.0-gtk3-dev \
  libwxbase3.0-dev   \
  libncurses5-dev \
  libbz2-dev \
  zlib1g-dev gettext \
  libtiff5-dev libpnglite-dev \
  libcairo2 libcairo2-dev \
  sqlite3 libsqlite3-dev \
  libpq-dev \
  libreadline6-dev libfreetype6-dev \
  libfftw3-3 libfftw3-dev \
  libboost-thread-dev libboost-program-options-dev  libpdal-dev\
  subversion libzstd-dev \
  checkinstall \
  libglu1-mesa-dev libxmu-dev \
  ghostscript wget \
  proj-data libgeos-dev libgdal-dev python3-gdal gdal-bin \
  libpdal-dev pdal -y

sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1

git clone https://github.com/OSGeo/grass.git releasebranch_8_0
cd releasebranch_8_0

MYCFLAGS='-O2 -fPIC -fno-common -fexceptions -std=gnu99 -fstack-protector -m64'
MYLDFLAGS='-Wl,--no-undefined -Wl,-z,now'

LDFLAGS="$MYLDFLAGS" CFLAGS="$MYCFLAGS" ./configure \
--with-freetype \
--with-freetype-includes=/usr/include/freetype2 \
--with-freetype-libs=/usr/lib \
--with-gdal=/usr/bin/gdal-config\
--with-proj \
--with-proj-includes=/usr/include \
--with-proj-libs=/usr/lib \
--with-proj-share=/usr/share/proj \
--with-geos=/usr/bin/geos-config \
--with-jpeg-includes=/usr/include \
--with-jpeg-libs=/usr/lib \
--with-cairo \
--with-cairo-ldflags="-lcairo" \
--without-postgres \
--without-mysql \
--with-fftw \
--with-blas \
--with-lapack \
--with-x \
--with-cxx \
--without-readline \
--prefix=/usr/local/grass \
--with-python \
--with-pdal=usr/bin/pdal-config \
--with-x \
--with-cxx \

make -j8

sudo make install

git pull

make clean
make distclean