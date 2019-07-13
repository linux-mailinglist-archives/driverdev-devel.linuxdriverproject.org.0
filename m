Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A771067A04
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Jul 2019 13:44:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 85E892051F;
	Sat, 13 Jul 2019 11:44:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VSPnCMUlrbTe; Sat, 13 Jul 2019 11:44:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C331C20502;
	Sat, 13 Jul 2019 11:44:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2897D1BF424
 for <devel@linuxdriverproject.org>; Sat, 13 Jul 2019 11:44:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2415987327
 for <devel@linuxdriverproject.org>; Sat, 13 Jul 2019 11:44:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sl719tLPAa73 for <devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 11:44:36 +0000 (UTC)
X-Greylist: delayed 00:05:19 by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B04EB873E3
 for <devel@driverdev.osuosl.org>; Sat, 13 Jul 2019 11:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563018269;
 bh=BWWyqYc0Q9lHRlufOjwlKzREgcGCirILPkFoZng2iMw=;
 h=X-UI-Sender-Class:Subject:From:Cc:References:To:Date:In-Reply-To;
 b=UrhAAdrlc0n4P1fGW0jr7lXX2g/ioKVNS50R207xVqs1lInp9b+Ub2x3wTEkKS+q2
 1+cI9esnN0IVEw6fYy+L2usDUMeRCG0h61DyK3JVcbLHJkYvzGB3tQNNgL7/+0ll2N
 H8L9ONR9QWzlgIlMkKtLgDQmwfnEKKjLijtxsT9A=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.43.122] ([92.40.248.250]) by mail.gmx.com (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MGyxN-1hiBm21fEp-00E2qN; Sat, 13
 Jul 2019 13:38:54 +0200
Subject: [REGRESSION] Xorg segfaults on Asus Chromebook CP101 with Linux v5.2
 (was Asus C101P Chromeboot fails to boot with Linux 5.2)
From: Alex Dewar <alex.dewar@gmx.co.uk>
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
 <CANBLGcyO5wAHgSVjYFB+hcp+SzaKY9d0QJm-hxqnSYbZ4Yv97g@mail.gmail.com>
 <862e98f3-8a89-a05e-1e85-e6f6004da32b@gmx.co.uk>
 <5fe66d5d-0624-323f-3bf8-56134ca85eca@gmx.co.uk>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Boris Brezillon <boris.brezillon@collabora.com>
Message-ID: <f47f8759-8113-812a-b17a-4be09665369e@gmx.co.uk>
Date: Sat, 13 Jul 2019 12:38:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <5fe66d5d-0624-323f-3bf8-56134ca85eca@gmx.co.uk>
Content-Language: en-US
X-Provags-ID: V03:K1:LbPaPzVSq7PJlnapOmV+BlI1ChwWNYoa0SaFu0C21B84M97YvV7
 85RffBT6jaGa40g+bVMVtOXftprToNyjJMhZ21zY+IwVtRgW6GMAs+zzSL7CbLyh+DcuWbv
 Gc+je70JuDlPCVNZZpllDXJ7wB/EiAjB7ad7ycDyadGdxCqNbl33o80PMLvk321yAP8t/E3
 zta3oivBwYDmHGCSViX/Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:GFzatS7moko=:nYTcfVI3JhM9qEEglg0qSJ
 EFBZtGfjCqHqX4uTe/iad9mz2g0Tu2y4cGy2QAdUqRo2dmfb7HTxySef+pyO1DhULew9vvfF5
 Mx9yy4lS41fjfn96xhsLiLVvxRBGLs2dSCZA6poBGdU81H5+y2rVAZrD0QE1nG/jMYiAdq+xH
 eH6H1537wbL5mTKnLHCsD5z0VBEtqpWyIFejHtYn1ajyAcwIZpRudEk+RAlLoF7rSf/KbAP48
 9hoXDHDQ3HyxJOCpKWwjPby9xUEXyXk9GaXTl2NJLa7jIgrNfLhwFv3DUiWsoxU8/rcdG82BY
 22K4cNKck5qEcYPcQjvzRqjvIkZdR7N89Rwb3aknmQm5d1CK6O+0ZR1S3Ft0l7bGwnp/UOmi4
 N0/rmhdKW7cAbxFU5tjIisYtMDceRpgQ3AcIqrv2i1pDZ5cEreZJvRFf9EBU9H8hBN/6zu50t
 heV/AVMG2WHJGFDubRs+83e9YR3CWXyEUHRdFNSXs6IM+IoqBsURpnN+HAZM3cVox8B0k4kQI
 d3/5iCNtKtEy0dYoSe17xiV8c0iHEx3FfWGBvTwNFapvYmaewuQ41I4OU1kodQ/hngoSjTn0+
 /3dKzo1ot+FMMIKU/mWk2wlnVNiXdbBS1mKVt7uKMjB+zGiJygzDz8h+nF7WGyTRi4mA6FjYE
 Z47w/xEPUSVl6K1inYrytyntSBraR9dY97gEHR+xk3FKTCjaKy4SnrNOAS2UYxc1yqMu/Wnfu
 C3l8Q9h/08+yhkqg0bZWxYjGqiYK4I6XjIFWFv23uJpz/WWAkm72wKk2k65s+Rh51SCaX1r+f
 0cH6PYw4PJaDh9SRgqWXyfs2gZEAD+U8qO2Im2TcuemT5B7wZgI09hcJ9doQv+W/hlUIN2VIf
 DGT/f8WnyPxuDJjTFdcGd7aSsQEE0Ce7pJPic7i5w2YOFeXl5a98XbcRzXeMnpd8zAqNGXpMl
 iPo9JkZNo2XA3eSV/ycJPAHo8iUAdxGUcP6WYBDX49Fpp/2EYpYanvALDCzAo5gxCesgZsBed
 YHBDzQYTKwR0xWYuGJRnhKQH8tCg8KJybxldxf5Fru6xhwEJ/xkcXEj7S2GZewl8kFq1GdkTX
 GWMACXESj8ynTfAWrBwca9ozDMOCF1wMTa0
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
Cc: devel@driverdev.osuosl.org, Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi all,

I initially thought my machine was failing to boot entirely, but it
turns out it was just failing to start the display manager. I managed to
escape to a tty by hammering the keyboard a bit.

I suspect the culprit is the rockchip_vpu driver (in staging/media),
which has been renamed to hantro in this merge window. When I run startx
from a terminal, X fails to start and Xorg segfaults (log here:
http://users.sussex.ac.uk/~ad374/xorg.log). X seems to work without any
issues in v5.1.

I've also tried running trace on the Xorg process, but the output was
pretty verbose. I can share if that would be helpful though.

Best,
Alex

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
