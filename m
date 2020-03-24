Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F83190DC8
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Mar 2020 13:39:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A2CFD88A64;
	Tue, 24 Mar 2020 12:39:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HUFpcMyQZz0m; Tue, 24 Mar 2020 12:39:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58B9C87E9B;
	Tue, 24 Mar 2020 12:39:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C64691BF280
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 12:39:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B4AFE20016
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 12:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MQFOK3Tl-ROQ for <devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 12:38:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net
 [217.70.183.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 4DD7620012
 for <devel@driverdev.osuosl.org>; Tue, 24 Mar 2020 12:38:59 +0000 (UTC)
X-Originating-IP: 83.155.44.161
Received: from classic (mon69-7-83-155-44-161.fbx.proxad.net [83.155.44.161])
 (Authenticated sender: hadess@hadess.net)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 11973240008;
 Tue, 24 Mar 2020 12:38:53 +0000 (UTC)
Message-ID: <9e67f1dd615b810e1725b13003fbb5d9000cd7c0.camel@hadess.net>
Subject: Re: [PATCH resend 3] staging: rtl8188eu: Add rtw_led_enable module
 parameter
From: Bastien Nocera <hadess@hadess.net>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue, 24 Mar 2020 13:38:53 +0100
In-Reply-To: <20200324123229.GD2348009@kroah.com>
References: <97d2ef68a6bcb7d1ece978eef6315e95732ca39d.camel@hadess.net>
 <20200324113840.GA2322042@kroah.com>
 <7aa74127978a73359ae95cd193bb3092d4536118.camel@hadess.net>
 <20200324123229.GD2348009@kroah.com>
User-Agent: Evolution 3.36.0 (3.36.0-1.fc32) 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-wireless@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-03-24 at 13:32 +0100, Greg Kroah-Hartman wrote:
> On Tue, Mar 24, 2020 at 12:47:01PM +0100, Bastien Nocera wrote:
> > On Tue, 2020-03-24 at 12:38 +0100, Greg Kroah-Hartman wrote:
> > > On Tue, Mar 24, 2020 at 11:36:00AM +0100, Bastien Nocera wrote:
> > > > Make it possible to disable the LED, as it can be pretty
> > > > annoying
> > > > depending on where it's located.
> > > > 
> > > > See also https://github.com/lwfinger/rtl8188eu/pull/304 for the
> > > > out-of-tree version.
> > > > 
> > > > Signed-off-by: Bastien Nocera <hadess@hadess.net>
> > > > ---
> > > >  drivers/staging/rtl8188eu/core/rtw_led.c      | 6 ++++++
> > > >  drivers/staging/rtl8188eu/include/drv_types.h | 2 ++
> > > >  drivers/staging/rtl8188eu/os_dep/os_intfs.c   | 5 +++++
> > > >  3 files changed, 13 insertions(+)
> > > > 
> > > > diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c
> > > > b/drivers/staging/rtl8188eu/core/rtw_led.c
> > > > index d1406cc99768..75a859accb7e 100644
> > > > --- a/drivers/staging/rtl8188eu/core/rtw_led.c
> > > > +++ b/drivers/staging/rtl8188eu/core/rtw_led.c
> > > > @@ -467,10 +467,16 @@ void blink_handler(struct LED_871x *pLed)
> > > >  
> > > >  void led_control_8188eu(struct adapter *padapter, enum
> > > > LED_CTL_MODE LedAction)
> > > >  {
> > > > +	struct registry_priv *registry_par;
> > > > +
> > > >  	if (padapter->bSurpriseRemoved || padapter-
> > > > >bDriverStopped ||
> > > >  	    !padapter->hw_init_completed)
> > > >  		return;
> > > >  
> > > > +	registry_par = &padapter->registrypriv;
> > > > +	if (!registry_par->led_enable)
> > > > +		return;
> > > > +
> > > >  	if ((padapter->pwrctrlpriv.rf_pwrstate != rf_on &&
> > > >  	     padapter->pwrctrlpriv.rfoff_reason >
> > > > RF_CHANGE_BY_PS) &&
> > > >  	    (LedAction == LED_CTL_TX || LedAction == LED_CTL_RX
> > > > ||
> > > > diff --git a/drivers/staging/rtl8188eu/include/drv_types.h
> > > > b/drivers/staging/rtl8188eu/include/drv_types.h
> > > > index 35c0946bc65d..4ca828141d3f 100644
> > > > --- a/drivers/staging/rtl8188eu/include/drv_types.h
> > > > +++ b/drivers/staging/rtl8188eu/include/drv_types.h
> > > > @@ -67,6 +67,8 @@ struct registry_priv {
> > > >  	u8	wmm_enable;
> > > >  	u8	uapsd_enable;
> > > >  
> > > > +	u8	led_enable;
> > > > +
> > > >  	struct wlan_bssid_ex    dev_network;
> > > >  
> > > >  	u8	ht_enable;
> > > > diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
> > > > b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
> > > > index 8907bf6bb7ff..ba55ae741215 100644
> > > > --- a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
> > > > +++ b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
> > > > @@ -47,6 +47,8 @@ static int rtw_acm_method;/*  0:By SW 1:By
> > > > HW. */
> > > >  static int rtw_wmm_enable = 1;/*  default is set to enable the
> > > > wmm. */
> > > >  static int rtw_uapsd_enable;
> > > >  
> > > > +static int rtw_led_enable = 1;
> > > > +
> > > >  static int rtw_ht_enable = 1;
> > > >  /* 0 :disable, bit(0): enable 2.4g, bit(1): enable 5g */
> > > >  static int rtw_cbw40_enable = 3;
> > > > @@ -98,6 +100,7 @@ module_param(rtw_channel, int, 0644);
> > > >  module_param(rtw_wmm_enable, int, 0644);
> > > >  module_param(rtw_vrtl_carrier_sense, int, 0644);
> > > >  module_param(rtw_vcs_type, int, 0644);
> > > > +module_param(rtw_led_enable, int, 0644);
> > > 
> > > Ick, really?  No, no nee module parameters, this is not the
> > > 1990's.
> > > 
> > > This should be done on a per-device basis, using the correct
> > > apis.
> > 
> > What API?
> 
> Documentation/leds/index.rst should give you a good start :)

Given how much work it'd be, I'll give it a miss and carry on using the
out-of-tree driver.

Thanks for the hint.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
