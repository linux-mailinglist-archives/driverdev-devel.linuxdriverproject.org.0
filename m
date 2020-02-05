Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E72B153391
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 15:59:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B15538443A;
	Wed,  5 Feb 2020 14:59:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y-ufUjZ819Ic; Wed,  5 Feb 2020 14:59:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 157C183F07;
	Wed,  5 Feb 2020 14:59:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F5B21BF271
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 14:59:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6C2888356F
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 14:59:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BtU23Ijxq9gl for <devel@linuxdriverproject.org>;
 Wed,  5 Feb 2020 14:59:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (lhrrgout.huawei.com [185.176.76.210])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3F8F4835B4
 for <devel@driverdev.osuosl.org>; Wed,  5 Feb 2020 14:59:44 +0000 (UTC)
Received: from lhreml702-cah.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 6217756200216D6E71B6;
 Wed,  5 Feb 2020 14:59:41 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 lhreml702-cah.china.huawei.com (10.201.108.43) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 5 Feb 2020 14:59:41 +0000
Received: from localhost (10.202.226.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Wed, 5 Feb 2020
 14:59:40 +0000
Date: Wed, 5 Feb 2020 14:59:38 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: "Sa, Nuno" <Nuno.Sa@analog.com>
Subject: Re: [PATCH 2/4] iio: imu: adis: Refactor adis_initial_startup
Message-ID: <20200205145938.00006a35@Huawei.com>
In-Reply-To: <182c1f94c7311580aea1b4cabe0ab2ae26bed3a6.camel@analog.com>
References: <20200120142051.28533-1-alexandru.ardelean@analog.com>
 <20200120142051.28533-2-alexandru.ardelean@analog.com>
 <20200201170839.4ab98d8e@archlinux>
 <da82db5f81e116c7ecc36f5d9833b90b4f7cd15d.camel@gmail.com>
 <20200203120338.000044c1@Huawei.com>
 <182c1f94c7311580aea1b4cabe0ab2ae26bed3a6.camel@analog.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.57]
X-ClientProxiedBy: lhreml712-chm.china.huawei.com (10.201.108.63) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Bogdan,
 Dragos" <Dragos.Bogdan@analog.com>, "Ardelean,
 Alexandru" <alexandru.Ardelean@analog.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 5 Feb 2020 12:25:40 +0000
"Sa, Nuno" <Nuno.Sa@analog.com> wrote:

> On Mon, 2020-02-03 at 12:03 +0000, Jonathan Cameron wrote:
> > =

> > On Mon, 3 Feb 2020 10:31:30 +0100
> > Nuno S=E1 <noname.nuno@gmail.com> wrote:
> >   =

> > > Hi Jonathan,
> > > =

> > > =

> > > On Sat, 2020-02-01 at 17:08 +0000, Jonathan Cameron wrote:  =

> > > > On Mon, 20 Jan 2020 16:20:49 +0200
> > > > Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
> > > >     =

> > > > > From: Nuno S=E1 <nuno.sa@analog.com>
> > > > > =

> > > > > All the ADIS devices perform, at the beginning, a self test to
> > > > > make
> > > > > sure
> > > > > the device is in a sane state. Furthermore, some drivers also
> > > > > do a
> > > > > call
> > > > > to `adis_reset()` before the test which is also a good
> > > > > practice.
> > > > > This
> > > > > patch unifies all those operation so that, there's no need for
> > > > > code
> > > > > duplication. Furthermore, the rst pin is also checked to make
> > > > > sure
> > > > > the
> > > > > device is not in HW reset. On top of this, some drivers also
> > > > > read
> > > > > the
> > > > > device product id and compare it with the device being probed
> > > > > to
> > > > > make
> > > > > sure the correct device is being handled. This can also be
> > > > > passed
> > > > > to the
> > > > > library by introducing a variable holding the PROD_ID register
> > > > > of
> > > > > the
> > > > > device.
> > > > > =

> > > > > Signed-off-by: Nuno S=E1 <nuno.sa@analog.com>
> > > > > Signed-off-by: Alexandru Ardelean <  =

> > > > > alexandru.ardelean@analog.com>  =

> > > > > ---
> > > > >  drivers/iio/imu/Kconfig      |  1 +
> > > > >  drivers/iio/imu/adis.c       | 63 ++++++++++++++++++++++++++
> > > > > ----
> > > > > ------
> > > > >  include/linux/iio/imu/adis.h | 15 ++++++++-
> > > > >  3 files changed, 61 insertions(+), 18 deletions(-)
> > > > > =

> > > > > diff --git a/drivers/iio/imu/Kconfig b/drivers/iio/imu/Kconfig
> > > > > index 60bb1029e759..63036cf473c7 100644
> > > > > --- a/drivers/iio/imu/Kconfig
> > > > > +++ b/drivers/iio/imu/Kconfig
> > > > > @@ -85,6 +85,7 @@ endmenu
> > > > >  =

> > > > >  config IIO_ADIS_LIB
> > > > >  	tristate
> > > > > +	depends on GPIOLIB
> > > > >  	help
> > > > >  	  A set of IO helper functions for the Analog Devices
> > > > > ADIS*
> > > > > device family.
> > > > >  =

> > > > > diff --git a/drivers/iio/imu/adis.c b/drivers/iio/imu/adis.c
> > > > > index d02b1911b0f2..1eca5271380e 100644
> > > > > --- a/drivers/iio/imu/adis.c
> > > > > +++ b/drivers/iio/imu/adis.c
> > > > > @@ -7,6 +7,7 @@
> > > > >   */
> > > > >  =

> > > > >  #include <linux/delay.h>
> > > > > +#include <linux/gpio/consumer.h>
> > > > >  #include <linux/mutex.h>
> > > > >  #include <linux/device.h>
> > > > >  #include <linux/kernel.h>
> > > > > @@ -365,36 +366,64 @@ static int adis_self_test(struct adis
> > > > > *adis)
> > > > >  }
> > > > >  =

> > > > >  /**
> > > > > - * adis_inital_startup() - Performs device self-test
> > > > > + * __adis_initial_startup() - Device initial setup
> > > > >   * @adis: The adis device
> > > > >   *
> > > > > + * This functions makes sure the device is not in reset, via
> > > > > rst
> > > > > pin.
> > > > > + * Furthermore it performs a SW reset (only in the case we are
> > > > > not
> > > > > coming from
> > > > > + * reset already) and a self test. It also compares the
> > > > > product id
> > > > > with the
> > > > > + * device id if the prod_id_reg variable is set.
> > > > > + *
> > > > >   * Returns 0 if the device is operational, a negative error
> > > > > code
> > > > > otherwise.
> > > > >   *
> > > > >   * This function should be called early on in the device
> > > > > initialization sequence
> > > > >   * to ensure that the device is in a sane and known state and
> > > > > that
> > > > > it is usable.
> > > > >   */
> > > > > -int adis_initial_startup(struct adis *adis)
> > > > > +int __adis_initial_startup(struct adis *adis)
> > > > >  {
> > > > >  	int ret;
> > > > > -
> > > > > -	mutex_lock(&adis->state_lock);
> > > > > +	struct gpio_desc *gpio;
> > > > > +	const struct adis_timeout *timeouts =3D adis->data-  =

> > > > > >timeouts;  =

> > > > > +	const char *iio_name =3D spi_get_device_id(adis->spi)-  =

> > > > > >name;  =

> > > > > +	u16 prod_id, dev_id;
> > > > > +
> > > > > +	/* check if the device has rst pin low */
> > > > > +	gpio =3D devm_gpiod_get_optional(&adis->spi->dev,
> > > > > "reset",
> > > > > GPIOD_ASIS);
> > > > > +	if (IS_ERR(gpio)) {
> > > > > +		return PTR_ERR(gpio);    =

> > > > =

> > > > Given you are returning here, no need for else to follow
> > > > =

> > > > if (gpio...
> > > >     =

> > > =

> > > Definitely...
> > >   =

> > > > > +	} else if (gpio && gpiod_get_value_cansleep(gpio)) {
> > > > > +		/* bring device out of reset */
> > > > > +		gpiod_set_value_cansleep(gpio, 0);    =

> > > > =

> > > > Hmm. So is a software reset the best option if we have a hardware
> > > > reset
> > > > line but it's not currently in the reset mode?
> > > >     =

> > > =

> > > Hmm, that's a fair question. Now that I think about it, if we do
> > > have a
> > > gpio we should just assume it's in reset and call
> > > `gpiod_set_value_cansleep`. So, I guess we could just ditch the
> > > `gpiod_get_value_cansleep(gpio)` part.  =

> > =

> > Not sure I agree.   For example the driver may well have been unbound
> > and rebound for some reason.  =

> =

> Yes, that is true..
> =

> > I would argue you should just do a set / reset cycle with appropriate
> > sleep
> > in between.  If it's already set then no harm done, if it isn't you
> > force
> > a hardware reset.  =

> =

> So, As Im understanding, it comes down to what should we consider as
> default. You suggest to first do the sw reset and the check the gpio
> state and if needed, bring the device out of reset, right? Now that I
> think about it, I think the only reason I haven't done like that is
> because you might end up sleeping quite some time (sw reset + hw
> reset). Either way, I'm fine with both options. Not sure if Alex has
> something to add...

Either reset should be good on it's own.  I would use hardware reset
if the pin is there. If it's not, then use the software reset.

For hardware always set the pin explicitly to reset as that guarantees
against any race conditions, even if something odd happens.

Jonathan

> =

> =

> Nuno S=E1 =

> > > > > +		msleep(timeouts->reset_ms);
> > > > > +	} else {
> > > > > +		ret =3D __adis_reset(adis);
> > > > > +		if (ret)
> > > > > +			return ret;
> > > > > +	}
> > > > >  =

> > > > >  	ret =3D adis_self_test(adis);
> > > > > -	if (ret) {
> > > > > -		dev_err(&adis->spi->dev, "Self-test failed,
> > > > > trying
> > > > > reset.\n");
> > > > > -		__adis_reset(adis);
> > > > > -		ret =3D adis_self_test(adis);
> > > > > -		if (ret) {
> > > > > -			dev_err(&adis->spi->dev, "Second self-
> > > > > test
> > > > > failed, giving up.\n");
> > > > > -			goto out_unlock;
> > > > > -		}
> > > > > -	}
> > > > > +	if (ret)
> > > > > +		return ret;
> > > > >  =

> > > > > -out_unlock:
> > > > > -	mutex_unlock(&adis->state_lock);
> > > > > -	return ret;
> > > > > +	if (!adis->data->prod_id_reg)
> > > > > +		return 0;
> > > > > +
> > > > > +	ret =3D adis_read_reg_16(adis, adis->data->prod_id_reg,
> > > > > &prod_id);
> > > > > +	if (ret)
> > > > > +		return ret;
> > > > > +
> > > > > +	ret =3D sscanf(iio_name, "adis%hu\n", &dev_id);    =

> > > > =

> > > > Hmm. I have a general dislike of pulling part name strings apart
> > > > to
> > > > get
> > > > IDs.  It tends to break when someone comes along and adds a part
> > > > with
> > > > new
> > > > branding.  Perhaps just put it in the relevant device part
> > > > specific
> > > > structures
> > > > directly?
> > > >     =

> > > =

> > > I'll admit that this to orientated to ADI devices and I basically
> > > just
> > > took what all the drivers were doing and placed it inside the
> > > library...
> > > =

> > > So, you mean passing this to each `chip_info` and then passing it
> > > to
> > > the library through `adis_data`?  =

> > =

> > Yes.  People don't tend to expect strings to need to take a
> > particular form,
> > so pulling them apart in a library can give unexpected results...
> >   =

> > > > > +	if (ret !=3D 1)
> > > > > +		return -EINVAL;
> > > > > +
> > > > > +	if (prod_id !=3D dev_id)
> > > > > +		dev_warn(&adis->spi->dev,
> > > > > +			 "Device ID(%u) and product ID(%u) do
> > > > > not
> > > > > match.",
> > > > > +			 dev_id, prod_id);
> > > > > +
> > > > > +	return 0;
> > > > >  }
> > > > > -EXPORT_SYMBOL_GPL(adis_initial_startup);
> > > > > +EXPORT_SYMBOL_GPL(__adis_initial_startup);
> > > > >  =

> > > > >  /**
> > > > >   * adis_single_conversion() - Performs a single sample
> > > > > conversion
> > > > > diff --git a/include/linux/iio/imu/adis.h
> > > > > b/include/linux/iio/imu/adis.h
> > > > > index d21a013d1122..c43e7922ab32 100644
> > > > > --- a/include/linux/iio/imu/adis.h
> > > > > +++ b/include/linux/iio/imu/adis.h
> > > > > @@ -41,6 +41,7 @@ struct adis_timeout {
> > > > >   * @glob_cmd_reg: Register address of the GLOB_CMD register
> > > > >   * @msc_ctrl_reg: Register address of the MSC_CTRL register
> > > > >   * @diag_stat_reg: Register address of the DIAG_STAT register
> > > > > + * @prod_id_reg: Register address of the PROD_ID register
> > > > >   * @self_test_reg: Register address to request self test
> > > > > command
> > > > >   * @status_error_msgs: Array of error messgaes
> > > > >   * @status_error_mask:
> > > > > @@ -54,6 +55,7 @@ struct adis_data {
> > > > >  	unsigned int glob_cmd_reg;
> > > > >  	unsigned int msc_ctrl_reg;
> > > > >  	unsigned int diag_stat_reg;
> > > > > +	unsigned int prod_id_reg;
> > > > >  =

> > > > >  	unsigned int self_test_mask;
> > > > >  	unsigned int self_test_reg;
> > > > > @@ -299,6 +301,7 @@ static inline int adis_read_reg_32(struct
> > > > > adis
> > > > > *adis, unsigned int reg,
> > > > >  =

> > > > >  int adis_enable_irq(struct adis *adis, bool enable);
> > > > >  int __adis_check_status(struct adis *adis);
> > > > > +int __adis_initial_startup(struct adis *adis);
> > > > >  =

> > > > >  static inline int adis_check_status(struct adis *adis)
> > > > >  {
> > > > > @@ -311,7 +314,17 @@ static inline int adis_check_status(struct
> > > > > adis *adis)
> > > > >  	return ret;
> > > > >  }
> > > > >  =

> > > > > -int adis_initial_startup(struct adis *adis);
> > > > > +/* locked version of __adis_initial_startup() */
> > > > > +static inline int adis_initial_startup(struct adis *adis)
> > > > > +{
> > > > > +	int ret;
> > > > > +
> > > > > +	mutex_lock(&adis->state_lock);
> > > > > +	ret =3D __adis_initial_startup(adis);
> > > > > +	mutex_unlock(&adis->state_lock);
> > > > > +
> > > > > +	return ret;
> > > > > +}
> > > > >  =

> > > > >  int adis_single_conversion(struct iio_dev *indio_dev,
> > > > >  	const struct iio_chan_spec *chan, unsigned int
> > > > > error_mask,    =

> > > > =

> > > >     =

> > =

> >   =

> =



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
