Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9C55045A
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 10:20:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AD85387368;
	Mon, 24 Jun 2019 08:20:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BlXHR-lvVRzM; Mon, 24 Jun 2019 08:20:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C6FA58715D;
	Mon, 24 Jun 2019 08:20:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 28DE41BF37F
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 08:20:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 24B7520108
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 08:20:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YQbFvbj96sCz for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 08:20:01 +0000 (UTC)
X-Greylist: delayed 00:05:32 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by silver.osuosl.org (Postfix) with ESMTPS id B58E720001
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 08:20:00 +0000 (UTC)
Received: from [192.168.178.70] ([109.104.35.135]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MYvoW-1i1RTc0Q4G-00UvOE; Mon, 24 Jun 2019 10:13:52 +0200
Subject: Re: [PATCH] staging: bcm2835-camera: Avoid apotential sleep while
 holding a spin_lock
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>, eric@anholt.net,
 gregkh@linuxfoundation.org, f.fainelli@gmail.com, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 tuomas.tynkkynen@iki.fi, inf.braun@fau.de, tobias.buettner@fau.de,
 hofrat@osadl.org
References: <20190624053351.5217-1-christophe.jaillet@wanadoo.fr>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <c8e5abba-7441-b201-1618-c92dfdfc7b1c@i2se.com>
Date: Mon, 24 Jun 2019 10:13:48 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190624053351.5217-1-christophe.jaillet@wanadoo.fr>
Content-Language: de-DE
X-Provags-ID: V03:K1:vvqf8FlBVKwdp6cZb6vSQAVE2D3lZnSKipS/eVDH9d3PZ020dMo
 6h2/VXzfCkh/Uy/E/8fUwSV+PQovkrLoOjpeR2r0WXSiFkznkl+e5kwkp5t5uY2iezT6+sG
 D7gejc2XKkjPlW39HneI77Jx0GRdY8YdR4PHlOiCfTyoujJbgK7Y0nokIBuUL9a8xnyltUx
 WJ4knFYuNX4FHuFqyq9Kg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:/9eq3i4feL0=:eRzDrEsGUPQ//Q/SZVuBSk
 omWyDO7g3hYIrnQmyIKg9NcUAsEJ5AuAOxdbo+6yMY/CQKpjfj+eknI1a7QfY2t20Smcqerl1
 5AulvqbK/E6S45ZISk5S7o3sACs+y4GWJpHqXdoZKsr8/PAvWFrmLL05On2JLeRfrF62yaP2Q
 HQUC0DmSEuByXAw1ka00cdaqE1ZCGDUsiky9AToDmNGi/igWw3yhgGJJCKTWgnKHffe2FKzQF
 XUs4bRzFtwxhIWtNYDCSQPcyUpU3bfpaiEQYXdUA65HF2PHQbWS9phuWyK5gJ0VNUA3HskgVG
 pFcjR3JVVs1Efig5bOFvlyUfjhYMoN3Pey4PVYJvJbkcDewIKS35I/U6P+HLw40U5bonjz6M8
 D487mizqrNgcGj1VRtUBQxlJ2/03It/OkwUwiqc39LlwImOKo37CJQDVdY71o35qsKKnP+UrM
 FtXAEkKVZm2ppxJdiR6FYiB7PQYnab3oFA0JofHbL6idpUwV2QyHd356fgeiSV5KH8aUMphj0
 zLCVLzve4dDZ/VvcHYJ58YuTG2zRpGl+Y1oA+et9QJlt/r8mQ/H5ITvlwUQfu0zzwNoOG7eJI
 PD4QolsK1OsKYheOS6d/9v73rd6Cvognh7CBF+EnwbrfOcB7AYQ4LNJxhICYoh3lwPFJkEJ/Z
 SmOLecKZpQ2T9kIAOUSiClWLdVgS/EUEGivn0bgIlf+vWKwBte3bF3LG9TPb/L98i77x9o8A5
 bOjEWc5Kq46Y8WraTNLIfuWF+l6Ts/y1Vw9Lc4Q6cLkZNe5oCrXEN/MBDaQ=
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christophe,

Am 24.06.2019 um 07:33 schrieb Christophe JAILLET:
> Do not allocate memory with GFP_KERNEL when holding a spin_lock, it may
> sleep. Use GFP_NOWAIT instead.
>
> Fixes: 950fd867c635 ("staging: bcm2835-camera: Replace open-coded idr with a struct idr.")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

there has been a fix for this, which isn't upstreamed yet. The preferred 
solution is to replace the spin_lock with a mutex. Since i'm currently 
working on this i would take care of this.

Sorry about this.

Stefan

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
