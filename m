Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6C127862B
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 13:43:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D384986DFC;
	Fri, 25 Sep 2020 11:43:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SfF6JjgHqCjc; Fri, 25 Sep 2020 11:43:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4CE4A86DE8;
	Fri, 25 Sep 2020 11:43:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA0741BF2BD
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 11:43:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B67E786CB2
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 11:43:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g29XPWykwn-n for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 11:43:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 70BD186C9B
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:43:06 +0000 (UTC)
Received: from mail-qk1-f182.google.com ([209.85.222.182]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MfYc4-1kx1h92i40-00fzKs for <devel@driverdev.osuosl.org>; Fri, 25 Sep
 2020 13:43:03 +0200
Received: by mail-qk1-f182.google.com with SMTP id n133so2371813qkn.11
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 04:43:03 -0700 (PDT)
X-Gm-Message-State: AOAM530KHWxQyAibPatlkBJdgQi/TAb2ZgsEtLGmG9/MQ6DJQ3jzAgXC
 18Li2PWl0y5ys8xjE+uAHuLVmOw0ybP6pIzRoAw=
X-Google-Smtp-Source: ABdhPJxwy6CLQ+3z9ls6t+I4y0zYbeMKdRiXGVftoa5NoJuLU2aRCidwAqxez624CRsRpyfFFmcB359CShOmCNqj0Lc=
X-Received: by 2002:a37:5d8:: with SMTP id 207mr3738577qkf.352.1601034182156; 
 Fri, 25 Sep 2020 04:43:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200922202208.1861595-1-arnd@arndb.de>
 <20200923054440.GA2619878@kroah.com>
In-Reply-To: <20200923054440.GA2619878@kroah.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 25 Sep 2020 13:42:46 +0200
X-Gmail-Original-Message-ID: <CAK8P3a19dDzW2gm-bC9PqVZ+sV+FJ7qdvzrSFrwd=XAdRcvLWA@mail.gmail.com>
Message-ID: <CAK8P3a19dDzW2gm-bC9PqVZ+sV+FJ7qdvzrSFrwd=XAdRcvLWA@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: vchiq: fix __user annotations
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Provags-ID: V03:K1:LUkdIJDTooohojL9J70WpSXl+HVSvKzoG74tXpVGvIgZkwGlC0Q
 66Y4Hkw6g50IcqhqZMt0izsy8nGqOxPnCayobSbf6mXY6Mfq2wYI1S59hAQYJpf5hLwrSwG
 PiVsPYS8RpJcQ9cMV1kpcarULVObUlrQMp7cF6Nu+tZOopnMex+LCB8jm0o9sYUQtpj+hS/
 4+6LXJNjRHFOthwnSqSuQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:LEIYoeRuOFI=:frNPo/NCRZjE3uhGeqyWc/
 lSVG4DGuL+LYAHBTsSyMHc9/+REdI/iRmPIG1lBf9eLA48sWFPrTti+hHxXnwdxgkC748umU/
 mpkYKZ1am2dc4K38eXqLYpWWGNYMN4mtejmqDehGgAdD23mPPL6jul5iSITOENuk+DhFHNeAS
 pDwQv/KmT2FCNI//EjXOrLZ7WP+zKQalmr4UZBRqfvytir4PfcepC8X+3EOutb/zOcdvRSGa2
 SDd6DBOeSD1IpBoT6G63JuY2mTbC6Xl8IT/3/QsK2yKa3z5sIT4XdoDPBnQrCt2NjPNsn9lRc
 npmoKMUM7KdlrTEYIlNv92cRrpzhhHBbGQtYw5g+Jb+pWlOqQShwSQm2/7iePfZH1sIW9DKP5
 o0ZqSD67zaiw4MGTtS8bdvuOKWiqAocoueNtJr4s7RRxzsdPH1oPvAsFf7aNbkdSkM6qA3OAy
 ixBWG7zdNhTpAb/xdhouQTpjj0A4zji1Xcm0zdxeBIDgCe2bC6XUUxUxG2pNjO3oU0HVWU+kS
 AZuzQmzIPiIUJFkQTFNmADfOLlGBHa7eTb33U0wkg+yuYTw0xlwpBGbH16aUs5xzi5DWKsDt/
 h8Iit5oRFRId4eAnNz4RlMJjKTQ9D7o0xY1IPr3M5alE0ScjB6XVWbUFPlIJvfe/YBsyUF1G3
 w0PtKp9BJHADd70VJoyslp1BrHZ4fl+w4RlM0QFBbtqFP7mb26/nkGIS1AM4rEHz+2goZC9kh
 R7P1vix/02rQKleekBvVSv7/qfmSgjLFX9Reqj+GaB9Z4yUvjEoTsDuh60o4l0ytXiF9dCZQt
 elft2f0JuRJT3d7HP0SPioWJ5vyizT6wEmCaaK6a1F9U0k+cCB9qZyGHmdxzY89dQNA2K6hT/
 pdWM5G0JhuGI/b6HjkIv74VMRjMMOFFk99XwLvhU0KfMSduG2v/+99InNCSvjOdhWT2gD9M4i
 kandiHeRra2mkWRtK1F/vlWEYOG+4A2HgBhf7T1w9lfhrY9uN9FSm
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Marcelo Diop-Gonzalez <marcgonzalez@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nachammai Karuppiah <nachukannan@gmail.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Jamal Shareef <jamal.k.shareef@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 23, 2020 at 7:44 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> and so on...
>
> Care to try a v2?

I had a look now and found the problem, as there are two drivers that I did not
have enabled but that need a trivial change to match my other modifications.

I'll send the new version in a bit, changes below for reference.

    Arnd

index 292fcee9d6f2..d567a2e3f70c 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -122,7 +122,7 @@ static int
 vc_vchi_audio_init(struct vchiq_instance *vchiq_instance,
                   struct bcm2835_audio_instance *instance)
 {
-       struct vchiq_service_params params = {
+       struct vchiq_service_params_kernel params = {
                .version                = VC_AUDIOSERV_VER,
                .version_min            = VC_AUDIOSERV_MIN_VER,
                .fourcc                 = VCHIQ_MAKE_FOURCC('A', 'U', 'D', 'S'),
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index e798d494f00f..3a4202551cfc 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -1858,7 +1858,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance
**out_instance)
        int status;
        struct vchiq_mmal_instance *instance;
        static struct vchiq_instance *vchiq_instance;
-       struct vchiq_service_params params = {
+       struct vchiq_service_params_kernel params = {
                .version                = VC_MMAL_VER,
                .version_min            = VC_MMAL_MIN_VER,
                .fourcc                 = VCHIQ_MAKE_FOURCC('m', 'm', 'a', 'l'),
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
