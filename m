Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1AA190E00
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Mar 2020 13:48:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C1C488C62;
	Tue, 24 Mar 2020 12:48:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J2qETPgg5UbX; Tue, 24 Mar 2020 12:48:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7AC0888A06;
	Tue, 24 Mar 2020 12:48:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8EF651BF280
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 12:48:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8C15982125
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 12:48:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tuW0yHyQnc+f for <devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 12:48:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CC41F82067
 for <devel@driverdev.osuosl.org>; Tue, 24 Mar 2020 12:48:47 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34805207FF;
 Tue, 24 Mar 2020 12:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585054127;
 bh=u6FVpx5s1WzXwQ4KIaMXw1+jYZ442C3hctbcfWm+vgU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xqo4sqTMHvDowJPVL6hisV1SN3je9ulX3impVKSkBVGlK8sjM1u5OjFsnxz0HjuA0
 aODKo78BPJWwGK8VXFyZN5HZvgGOTE79pUafzuIdSl8/f/SH0EJoJ8ISPFsA7iwEBd
 2PmODul0noUqKGIwsHGU/u/1hxo1TTbfC5IWGvpk=
Date: Tue, 24 Mar 2020 13:48:45 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bastien Nocera <hadess@hadess.net>
Subject: Re: [PATCH resend 3] staging: rtl8188eu: Add rtw_led_enable module
 parameter
Message-ID: <20200324124845.GB2401396@kroah.com>
References: <97d2ef68a6bcb7d1ece978eef6315e95732ca39d.camel@hadess.net>
 <20200324113840.GA2322042@kroah.com>
 <7aa74127978a73359ae95cd193bb3092d4536118.camel@hadess.net>
 <20200324123229.GD2348009@kroah.com>
 <9e67f1dd615b810e1725b13003fbb5d9000cd7c0.camel@hadess.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9e67f1dd615b810e1725b13003fbb5d9000cd7c0.camel@hadess.net>
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

On Tue, Mar 24, 2020 at 01:38:53PM +0100, Bastien Nocera wrote:
> On Tue, 2020-03-24 at 13:32 +0100, Greg Kroah-Hartman wrote:
> > On Tue, Mar 24, 2020 at 12:47:01PM +0100, Bastien Nocera wrote:
> > > On Tue, 2020-03-24 at 12:38 +0100, Greg Kroah-Hartman wrote:
> > > > On Tue, Mar 24, 2020 at 11:36:00AM +0100, Bastien Nocera wrote:
> > > > > Make it possible to disable the LED, as it can be pretty
> > > > > annoying
> > > > > depending on where it's located.
> > > > > 
> > > > > See also https://github.com/lwfinger/rtl8188eu/pull/304 for the
> > > > > out-of-tree version.
> > > > > 
> > > > > Signed-off-by: Bastien Nocera <hadess@hadess.net>
> > > > > ---
> > > > >  drivers/staging/rtl8188eu/core/rtw_led.c      | 6 ++++++
> > > > >  drivers/staging/rtl8188eu/include/drv_types.h | 2 ++
> > > > >  drivers/staging/rtl8188eu/os_dep/os_intfs.c   | 5 +++++
> > > > >  3 files changed, 13 insertions(+)
> > > > > 
> > > > > diff --git a/drivers/staging/rtl8188eu/core/rtw_led.c
> > > > > b/drivers/staging/rtl8188eu/core/rtw_led.c
> > > > > index d1406cc99768..75a859accb7e 100644
> > > > > --- a/drivers/staging/rtl8188eu/core/rtw_led.c
> > > > > +++ b/drivers/staging/rtl8188eu/core/rtw_led.c
> > > > > @@ -467,10 +467,16 @@ void blink_handler(struct LED_871x *pLed)
> > > > >  
> > > > >  void led_control_8188eu(struct adapter *padapter, enum
> > > > > LED_CTL_MODE LedAction)
> > > > >  {
> > > > > +	struct registry_priv *registry_par;
> > > > > +
> > > > >  	if (padapter->bSurpriseRemoved || padapter-
> > > > > >bDriverStopped ||
> > > > >  	    !padapter->hw_init_completed)
> > > > >  		return;
> > > > >  
> > > > > +	registry_par = &padapter->registrypriv;
> > > > > +	if (!registry_par->led_enable)
> > > > > +		return;
> > > > > +
> > > > >  	if ((padapter->pwrctrlpriv.rf_pwrstate != rf_on &&
> > > > >  	     padapter->pwrctrlpriv.rfoff_reason >
> > > > > RF_CHANGE_BY_PS) &&
> > > > >  	    (LedAction == LED_CTL_TX || LedAction == LED_CTL_RX
> > > > > ||
> > > > > diff --git a/drivers/staging/rtl8188eu/include/drv_types.h
> > > > > b/drivers/staging/rtl8188eu/include/drv_types.h
> > > > > index 35c0946bc65d..4ca828141d3f 100644
> > > > > --- a/drivers/staging/rtl8188eu/include/drv_types.h
> > > > > +++ b/drivers/staging/rtl8188eu/include/drv_types.h
> > > > > @@ -67,6 +67,8 @@ struct registry_priv {
> > > > >  	u8	wmm_enable;
> > > > >  	u8	uapsd_enable;
> > > > >  
> > > > > +	u8	led_enable;
> > > > > +
> > > > >  	struct wlan_bssid_ex    dev_network;
> > > > >  
> > > > >  	u8	ht_enable;
> > > > > diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
> > > > > b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
> > > > > index 8907bf6bb7ff..ba55ae741215 100644
> > > > > --- a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
> > > > > +++ b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
> > > > > @@ -47,6 +47,8 @@ static int rtw_acm_method;/*  0:By SW 1:By
> > > > > HW. */
> > > > >  static int rtw_wmm_enable = 1;/*  default is set to enable the
> > > > > wmm. */
> > > > >  static int rtw_uapsd_enable;
> > > > >  
> > > > > +static int rtw_led_enable = 1;
> > > > > +
> > > > >  static int rtw_ht_enable = 1;
> > > > >  /* 0 :disable, bit(0): enable 2.4g, bit(1): enable 5g */
> > > > >  static int rtw_cbw40_enable = 3;
> > > > > @@ -98,6 +100,7 @@ module_param(rtw_channel, int, 0644);
> > > > >  module_param(rtw_wmm_enable, int, 0644);
> > > > >  module_param(rtw_vrtl_carrier_sense, int, 0644);
> > > > >  module_param(rtw_vcs_type, int, 0644);
> > > > > +module_param(rtw_led_enable, int, 0644);
> > > > 
> > > > Ick, really?  No, no nee module parameters, this is not the
> > > > 1990's.
> > > > 
> > > > This should be done on a per-device basis, using the correct
> > > > apis.
> > > 
> > > What API?
> > 
> > Documentation/leds/index.rst should give you a good start :)
> 
> Given how much work it'd be, I'll give it a miss and carry on using the
> out-of-tree driver.

Huh?  Why not fix this properly, as that's the only way this driver is
ever going to be fixed up correctly and get out of staging at all.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
