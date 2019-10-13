Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3B3D578B
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Oct 2019 21:05:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CFAAD8691B;
	Sun, 13 Oct 2019 19:05:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7gqvKZYAH2qX; Sun, 13 Oct 2019 19:05:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 238C48687B;
	Sun, 13 Oct 2019 19:05:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 612E61BF2F6
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 19:05:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5A65487B39
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 19:05:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 21gHmVGN546f for <devel@linuxdriverproject.org>;
 Sun, 13 Oct 2019 19:05:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8FF1487B21
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 19:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570993519;
 bh=MO2oXO2i14ZtdkD68DinZld5+bL5TDWxW+IcfydEnZw=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=MLOsUSl9T1lMIAx8wmXUqYPhvsXiDwTz6Q5D9vS8SNyxDDdS4kjIcXveTilsEyxiY
 7zUtaayxutyBkCl/2ZGpM9cWIpXs2gUL8eSmjG6uIy/wUp0lKmW2mfca1XBSHbDQh8
 1230FRXqeUjyPwdTFdik4qQqF/SUfof3S6cDUjO4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.112]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MC34h-1iDvD13FbJ-00CSTA; Sun, 13
 Oct 2019 21:05:18 +0200
Subject: Re: [PATCH 1/2] staging: vc04_services: fix lines ending with open
 parenthesis
To: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com
References: <20191013183420.13785-1-jbi.octave@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <38a29280-820a-4752-d9b5-099647a159d5@gmx.net>
Date: Sun, 13 Oct 2019 21:05:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191013183420.13785-1-jbi.octave@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:oekdBUYy9JblNZTDryIiY4k9qbz96nELqU0fWbvsIAKMlCfzSoO
 Vf1SxQieI0o6MpseCrTMCUJ9EvaghlmGvBoja6Sy7Z+NTkyGr0M0dVgmX254tZT7biRfCwo
 VedSrf7vvnIthR9JJGwTLYI2PsKDDJNiEfre6Chjt+7rPNtk51CVzM77JHxMmwKTPYlEUCo
 LyzgI/01Ldt4GUrV743xw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:iTrNcnt6GRk=:yt2+kE4Wg4RaXVE162SAQB
 H2murMDCUcNTzaI59qGJ1/Vpji1CqO/v9JWjPwlgu7yvXC/9JutFMl6AL6RNxdL6e2VB0dNCK
 1UwNz8Z2Y7uN3P6MwA2r9A04ETOv4BhbwyXKxzHsJO9S6PKCbpPPkvrzFwWe5jNtIKvHuppUY
 Uag4xEEH84p6G9tM+nDfyWvanXDCob8xhYdY4TC0D0tIRXd+i3mvr1ILdpDwdMxLXqXj/drsm
 tV18jtDPHPeyY6GcoVRbMj0n2ZFeFO9J7+WPM3AiL9+6r/73BrLjLOGVfiIpQTJlhgJYAl2QQ
 T1dnjh9UdeFB/uU/U21CDk52Nt4bfp48tg/SVpFLYsWyKPw2oTPSTWrMDXLnDd6oue0vNiwbY
 1LI4iK+WH33QuyI94V/LJO4kIRmvzUTCBoMfTB7wltzFC1mlHj2zcph57VCCrtwrvHGZM+hbx
 DpemID0udkYnEqloS2TSio7LsYzxHOIvqsRgKkPntSbdl/iF0TCOpSztqoOc2EW8krThHUnVK
 UhpLaxgfZ96GLuWI8qyJN5jjc4fgYzGVb8cFDHdeCukk1RUumkjEUPdZrjXVFO/RTVKgMK+Li
 y2V6PPm3TKoR3LfawkhbxuS2XGegEPm0Y8GhKCqlHhy3/0VobBsKrV7xM5u74WT/QKfcxeGVl
 4URKZSU/xrARZKBR704DcOmhlmTpAj7hdmTXUgT8yLcAn4mLhw7g7HOnYhzUWKlhdIG+/LS71
 0CWklXup3yDQ9Lv1lsEZe4D/ECMb+SXXtRizoaV592oKnDwp4LFojXidgkEwnnZsEm2vrsnFG
 bzQh/byujnu9WRV1GIwM9vT9gfcoszyoX5DYxQY9q7Bs//P+50g4GTKsV4ONTEZDTltkE27YC
 v7cwmqKN97GseKDdyf9W8+Duq10qHiBwW1yQOQ9VHdLr5N7M3fheu5lR+alWj0rONwPGmPa33
 vCkBPaIxFc1GMzYsGAZ/IKBDlw895RgipElImQBHXcnYopYsGNrhvc4jpX293I8U994RpIaA3
 sq7DErYrXFCYlYkJvOoA/Gs7vWZsjHdSEDV9m4UbWHJXhSt5tY6bUjZFf9C7DerIgntavMAYJ
 1zBnLusnTrDa75IcfcfkUeYBiK1Eocq+/M8kl/xgaW7rkKr0A1iyOi2LYQByiOqlYYUZqPOm9
 5KXi8ycPBVvZV83k0Vyg4/Y9f3LraVr+3oN85zwyu09tp5RbrAm31DnGAEPhSPLdGlc5mxhF2
 4Xv373gNP/RNnp6SdNL1I3/T6KeOHeVRvWW8eLTpcrkl4xUmaieDHEBxNM8k=
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
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com, sbranden@broadcom.com,
 mchehab+samsung@kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, eric@anholt.net, daniela.mormocea@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 dave.stevenson@raspberrypi.org, rjui@broadcom.com, hverkuil-cisco@xs4all.nl,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Jules,

Am 13.10.19 um 20:34 schrieb Jules Irenge:
> Fix lines ending with open parenthesis. Issue detected by checkpatch tool.
> In the process, change driver functions name in the multiple files from:
> vchiq_mmal_port_parameter_set to vmp_prmtr_set
> vchiq_mmal_component_disable to vm_cmpnt_disable
> vchiq_mmal_port_connect_tunnel to vmp_cnnct_tunnel
> vchiq_mmal_component_enable to vm_cmpnt_enable

please no. Changing random function names into something unreadable
doesn't increase code readability. We need to keep an eye on the whole
interface. Maybe you better start with the 2nd part of Joe's suggestion
first.

Stefan

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
