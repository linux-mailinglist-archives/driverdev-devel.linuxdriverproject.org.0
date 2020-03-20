Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D68CF18D47D
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 17:32:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7467D88A89;
	Fri, 20 Mar 2020 16:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Po1GSRDrYJwX; Fri, 20 Mar 2020 16:32:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E4E7287BDE;
	Fri, 20 Mar 2020 16:32:35 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E6E51BF278
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:32:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 45D6C88447
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:32:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p3WcY9hsEqV9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:32:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1E94D883CC
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:32:32 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id 13so7100953oiy.9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 09:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/qJzYK/EofHw25Ng6apqG/SS4GKmuhFwt3ssglXp+EE=;
 b=RhkC1SVfYJREZCtIwe/7UU8QNxXwQy8XEbkxeQbiRpaEmT7uR9UFf5QxtTqXYM9fSN
 vyo8Fu5Rh3LAweQkZq/Q899rV6j2LXA8k5hHaZ9MY4tpVXiXVWuatGuCzcrITHEjf8Pj
 eBZ4tLpAiYkqDYrA7PJl65PoQT7qftkxZxOl689MNlmYK5wyZosag8eEyhIBSEwKG/CP
 doVIWkdtk+TopuYNI8jG8iLXKth9+znK5gLVgogpRDsRu9hcwEk5rCMOZTS8+RISffpf
 X57LSz0kLrOKX77AgLmeRtO4E7l58e16SBr5+Khm68aISKS10AN94NKvWUFsIzi6/6wI
 7hhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/qJzYK/EofHw25Ng6apqG/SS4GKmuhFwt3ssglXp+EE=;
 b=TPBaeBwRwD4SnkD+T8plgd/teOoYh/aNuPORdKMql06iUrFDWqBEkAoQMVXplgJYyz
 13736lFaj87EEGLbWDthQdVifNktctqLe/Ir0zFCz+2rVO8fa2JY8tKl/pZALhqwdwiK
 wcVy7VidwdBIlzBcTmFv8WwzGsiCVjHPMBiE+yPcisYwynAeodU1CTKhqrDb6yssVBfa
 s3muN3TECe+oWe94VRRF0Vcm54uXeZstATDizrdaDQen6ZAupX24UfNnuMQshN0V6OmI
 MUUsYfnJnG91UZqlNMSCuU8kk2AmGhhMJ0zBR+yHx8KZtbHEOwgxumnLqhQcFviRAvXM
 /b9g==
X-Gm-Message-State: ANhLgQ0XSWfvmPSFd4WiHyU4O7e1+u8Xkos2bPW7wXH6lXNB44qwEZn5
 6VYnM6PoQyW7FsUeJ4pUSQRvQu9JafPC+t3satM=
X-Google-Smtp-Source: ADFU+vs8PU2GbL1ImfE51CQHRSIGi8niZEMPe+mrNq0s6P7CUNdaSmQpNpbvg4Epo+wXrhe8Za381C9eDfDQQv0fLFk=
X-Received: by 2002:a54:478d:: with SMTP id o13mr7407409oic.166.1584721951280; 
 Fri, 20 Mar 2020 09:32:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
 <20200313200913.24321-6-sergio.paracuellos@gmail.com>
 <CAJsYDVKgx419P9f-Y7DaETejwaHwdbnT8+g-Uk4NoKB0qgqPKA@mail.gmail.com>
 <CAMhs-H9-F+6QwD_LFihUk31mHn1B72LxR+i=AXgCFP0ESyjxKA@mail.gmail.com>
 <CAJsYDV+O9TY2uDHrFU5+RxEsurowMH4uskkdkGnfQb9cxTk76g@mail.gmail.com>
In-Reply-To: <CAJsYDV+O9TY2uDHrFU5+RxEsurowMH4uskkdkGnfQb9cxTk76g@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 20 Mar 2020 17:32:19 +0100
Message-ID: <CAMhs-H9MdudEij_D84gFNSt70r_gv5joOxCCB+X4foHGeLTpEA@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] staging: mt7621-pci: release gpios after pci
 initialization
To: Chuanhong Guo <gch981213@gmail.com>
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
Cc: ryder.lee@mediatek.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org, weijie.gao@mediatek.com,
 Greg Ungerer <gerg@kernel.org>, NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On Fri, Mar 20, 2020 at 4:39 PM Chuanhong Guo <gch981213@gmail.com> wrote:
>
> Hi!
>
> On Fri, Mar 20, 2020 at 11:29 PM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> > > This pin conflict comes from incorrectly occupying pins that are not
> > > used by pcie,
> > > and should be fixed by not occupying those pins in the first place.
> > > Releasing all
> > > gpios isn't the proper way to go.
> >
> > So, you are saying we just have to get gpio for the pin 19 and forget
> > about the others?
>
> Not really "forget about the others". We should use only gpio19
> in mt7621.dtsi and others should be added to device dts if it's
> actually needed. e.g. if pcie cards can't be detected on a specific
> board without gpio7 and/or gpio8, override gpio-resets in dts of
> that board.

If I am understanding correctly for example for my gnubee this should
be as follows:

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi
b/drivers/staging/mt7621-dts/mt7621.dtsi
index 10fb497cf81a..9e5cf68731bb 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -538,9 +538,7 @@ pcie: pcie@1e140000 {
                phys = <&pcie0_phy 1>, <&pcie2_phy 0>;
                phy-names = "pcie-phy0", "pcie-phy2";

-               reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>,
-                               <&gpio 8 GPIO_ACTIVE_LOW>,
-                               <&gpio 7 GPIO_ACTIVE_LOW>;
+               reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>;

                pcie@0,0 {
                        reg = <0x0000 0 0 0 0>;
sergio@camaron:~/staging$ git diff drivers/staging/mt7621-dts/gbpc1.dts
diff --git a/drivers/staging/mt7621-dts/gbpc1.dts
b/drivers/staging/mt7621-dts/gbpc1.dts
index 1fb560ff059c..a7c0d3115d72 100644
--- a/drivers/staging/mt7621-dts/gbpc1.dts
+++ b/drivers/staging/mt7621-dts/gbpc1.dts
@@ -114,6 +114,10 @@ &cpuclock {
 &pcie {
        pinctrl-names = "default";
        pinctrl-0 = <&pcie_pins>;
+
+       reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>,
+                       <&gpio 8 GPIO_ACTIVE_LOW>,
+                       <&gpio 7 GPIO_ACTIVE_LOW>;
        status = "okay";
 };

Is this true? So changes will be only in the device tree but driver is
ok as it is.

>
> --
> Regards,
> Chuanhong Guo

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
