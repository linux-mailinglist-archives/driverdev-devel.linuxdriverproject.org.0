Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3B61B07F
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 08:49:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2387F8610A;
	Mon, 13 May 2019 06:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JsLzYir786xn; Mon, 13 May 2019 06:49:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D1815861CD;
	Mon, 13 May 2019 06:49:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0CB521BF860
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 06:49:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 08B242420F
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 06:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id grFglynmAEWm for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 06:49:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by silver.osuosl.org (Postfix) with ESMTPS id 9077520764
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 06:49:40 +0000 (UTC)
Received: from [192.168.178.187] ([109.104.40.7]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MD9Kp-1hYdLQ1ZJ3-00985K; Mon, 13 May 2019 08:49:17 +0200
Subject: Re: [PATCH] staging: vc04_services: bcm2835-camera: remove redundant
 assignment to variable ret
To: Colin King <colin.king@canonical.com>, Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org
References: <20190511134813.5645-1-colin.king@canonical.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <5fd5c89a-4bd0-1d2d-f027-819fe954bd5f@i2se.com>
Date: Mon, 13 May 2019 08:49:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190511134813.5645-1-colin.king@canonical.com>
Content-Language: en-US
X-Provags-ID: V03:K1:6gjO/x7pdDWHJchMfTFoYpMrc2jCJwMLYflU4Gu8ajN8J46umg6
 aMe2yCTYt5dfh5L90OffWgr+De4ZEbH7zWOzULis8Wg7jHu11WCzgZWtKNKPAptARDx0oJ0
 onjJagH2RY6NH+NAetYiMMsie9qoyv3MvH4KUKzjZocbDIdCRjsjk1SFU/5wxaBPr4iNuWQ
 hQtDghl6UxoBPf6cQUayg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:ATE5Qe06IYI=:LutzhZvoFJqtjnVznCcyii
 tuxoWieuRi4pbG6k9Au0IJ9Ub5XgOXfj1MY0QsBkBbMXSbDvguUogyLLnjeSwNGOsWeOMjvSM
 8AkIDckWw+Udpaq5coHqFCoxBKcqTR7tymRibv5jN5rdQTe4mOvO6FD6Cxvt5xk9taq/JjZJn
 jrCvrFs1sK6T9EdG8v0Adu8/TbKi8+UV9AvAIDXtJsnDHMeen1p5PYYLP3xRp86bo2osT0NzL
 gjEeHhxxREkPSAG3zyCYMeiMMgdOtvFpoiT6gStg5XSWBLCinF8NVQh91n/7yl/bddj2JjWGI
 8fmMZFsL4MKtdLf4SBPlvPfx26E8QaGGPnL5CVeqqT8v7UsY2PpUyh05QtzsXlem2TNnGYdtH
 /b7eub9w1KSlYIAhLVUN41vJBSQGjgKWIgUav2Aim1M4Dw7uND/9bidkmVIKu3A3z4lY3OQoZ
 rDIu0sAWbt8ZzTOf3H2ERZPU0gDkDtxPV602BDNE2JIIIdO0+iThd7fQntiBQXFljbxxLj6ZY
 SdEZ1f6CfX5ji1ZM3gHrlI/hMwZXuB+NOPfSOzXYSAgLOPhbU2wXA6d5Vw+g5A4k+zvp79plc
 ZilfIzGQj5RS7eD1od8LSX00t9D0pz+yL1Ue+1Xvs/ALaEkzKRnnV/oo6RcUd4VeZ6MvUlMiD
 1akkc4W8Sn/78m4OlWg088rvmNW8BJ9j+uUosZe0QQWCqFvYXJ9YTIICv0weU9AAR/pn8B25i
 R7N7C825vhSBDGmX7QLdXGT7S6Vx3XH2oT5Ig3b8K9XyfNS5TXKSbguR/3Y=
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 11.05.19 15:48, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
>
> The variable ret is being initialized however this is never read and later
> it is being reassigned to a new value. The initialization is redundant and
> hence can be removed.
>
> Addresses-Coverity: ("Unused Value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
Acked-by: Stefan Wahren <stefan.wahren@i2se.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
