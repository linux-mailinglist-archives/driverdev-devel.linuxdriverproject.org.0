Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A523F1A67A1
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 16:13:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E0EB8204B;
	Mon, 13 Apr 2020 14:13:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O89BJ1fxjD8x; Mon, 13 Apr 2020 14:13:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3462684922;
	Mon, 13 Apr 2020 14:13:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 430531BF3A0
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 14:13:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3EAEB8471C
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 14:13:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5uVFoxt2bj9p for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 14:13:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 98E0D83C53
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 14:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586787209;
 bh=fsy7pbyVHuLxcF0YdSrvHewVvvVq1Q53I/0F2aOE4NE=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=ALACTwc9Ve7aA1UcHApC2Tu9knx4ZjbO+KhmHxfHIgFeUphJwt6p2vqLZIO+P0lKm
 UQKHwlIXA0ZAPQj5dNnVOX4u4pK9qiwbv7ThrRBhP+3qZ75hEyPy6Gidd5PQ4/1/SB
 6wfAszM4lWTp2WO5P3Vfd47I02HRbehPNvoPwPJg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1Mxm3K-1j3i4N01aY-00zJfT; Mon, 13
 Apr 2020 16:13:29 +0200
Date: Mon, 13 Apr 2020 16:13:15 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 1/2] staging: vt6656: Use define instead of magic
 number for tx_rate
Message-ID: <20200413141315.GA3101@ubuntu>
References: <20200407163915.7491-1-oscar.carter@gmx.com>
 <20200407163915.7491-2-oscar.carter@gmx.com>
 <20200413125633.GB3127208@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413125633.GB3127208@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:2ADjKbcyP1Uqbfc5HGXxmv9sHYISCCpoF8znnylwnSdy1Rqg4DD
 hA6GTRi2oACLltq5zb6Mg2OQgEB5UWYLsxZhrhCsF6BF1k/8atd3FF4A8avCv0CTy7pIUqb
 japaMQ/DQICbgyeQmwAQRlZrZic9tzJ48oviQ/V7j6M1ThR9lIIQPW0in0u8qA03N+pPlO/
 /ISpu8D/nEZ+yDSKdI+RQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:U8SuuQS1uaU=:3TnpPg9hfWRzjErBGedKeu
 FoUa76tpPcI/Y3GT1ukoPg4NrshP+0QgZMPtBu0sicyKL5YOYKsXYpS6AtCWp2wHt1h4VRdJR
 TSCP/Y3B+uAnxB/4eHC6XkTItGhARYj4XJMfR60N0LP+jZ+KSvp81EH6/09iCGmubnRLbjjC6
 e/0W+f+qXBdRN193VyMEAz1JZiknG6c16KYuwwmqu7I6YedPFxWl6vDF87mITvkQpMWe5Yyot
 fIkVWYn0AaxKP76+w0HVH+nNTBE805g5+TTPaIJKB6JcnY8Ye/7zskwzvsSeqzgqXrm5557Ts
 xbZBUu47dAp5H7VRkWTIkgjn02tVCzKTLSmwu570XB5/DTekWA1hXEO2wsfBN7769la8qtUdd
 UxVxjIjjNyJ+DIv86BRLfMCYNSjixe6MLurywlVcojs8ajDn8ZrL6Z8G9DY/2ephJxN/sJzVR
 djBlm4dD8K+f7bUS1PsEBBltxNlipJE1A788fEbeZ2JFjtCpWMC6cHZI8SU8QsUoFdwnRP5EK
 Mzii4T6+oB0oeFyH3rHS115Pbbl3Q09zfGYx1nGy86jMNT6pphQlYEIrFPkzkf+snA+bD8N/N
 xVgeVP53B60CYjBKu8p/3xqcnZL0uN51oMyF5mLc2TRCKanZ9b20IqzYF4eZPQLKNS9wVuk4P
 DEhA1/0hqnVdO8RLeovrElbuPztCb+UPrNx5ZJ+Vq1UHCsw1sM8/b1ux8HWnF6yn6PZ+F17I2
 clDPF4fUTqFDhjNTOHPPSZM/KuSRC8C2sL7xMGja08JirFx321mcVTwB74QP1DotvHEAUTotF
 ysCNt/rWB4mkMsIXJFvC5vC75pzdlwY3q5g9kjG0NLeXKUh1tcQm/MvSWDsQhW/PnCSH4sv1r
 pLIaVVXP9PIi6fekzG0lZZUtJ6Y8mlA4n8DyMo0t0srFGIMT7haZb4DuWerz/GbT/MJ0pmbqB
 xoJaFPm+96vSiyTfm5ESEyCgjbE6auRxCOEsCyoODTFeFZYnnQLirmfWjJa/ZFByqi5xaJ213
 FkuEXlw4iJjf93l4xbgVrujtiH3T8iwpig90b7oO/lVjonBXy4qLugDEykftGxz3011ysiO33
 VV+qcMQG0klJubBAAlt4XPZnsAnAlBOzALeKQu6TxoxBd63EidsK+XvnJC39MBbXoixYwy87b
 vlvjGG29KaoJhWteU2Ostp88/6fKhdi1lZsAsQCq0Uf+zdp+8b8jNyOFosUq/SqcnSz1R0w+Y
 t/nXdeIgUQ5yIzM6a
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 13, 2020 at 02:56:33PM +0200, Greg Kroah-Hartman wrote:
> On Tue, Apr 07, 2020 at 06:39:14PM +0200, Oscar Carter wrote:
> > Use the define RATE_11M present in the file "device.h" instead of the
> > magic number 3. So the code is more clear.
> >
> > Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > ---
> >  drivers/staging/vt6656/baseband.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
>
> This patch did not apply to my tree, please rebase and resend.
>
I need to rebase only this patch for this serie so, it's necessary to send all
the serie or only this patch?

If it's only this patch I need to indicate v4 in the subject or a v2 due it's
related only with this patch?

> thanks,
>
> greg k-h

thanks,

oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
