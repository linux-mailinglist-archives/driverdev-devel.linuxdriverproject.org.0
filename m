Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2AD9174D7F
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Mar 2020 14:17:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B61BC203DF;
	Sun,  1 Mar 2020 13:17:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 93Zr7lB4cpVU; Sun,  1 Mar 2020 13:17:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2D49A2036D;
	Sun,  1 Mar 2020 13:17:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA2461BF25F
 for <devel@linuxdriverproject.org>; Sun,  1 Mar 2020 13:17:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D617085CA1
 for <devel@linuxdriverproject.org>; Sun,  1 Mar 2020 13:17:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id seWmZLSge22e for <devel@linuxdriverproject.org>;
 Sun,  1 Mar 2020 13:17:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4905D85C9E
 for <devel@driverdev.osuosl.org>; Sun,  1 Mar 2020 13:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1583068654;
 bh=JiACLfeTzfR7Tp6Twq5Fov4Jw+UmCO3dhmp6JKW9KT8=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=TtRZmATQioE7mXIuJAWkz8OnmNT5mNUZjKVdaoZCTNkhMLgIQwd1eM4MiND4Po/ka
 wMQ6o+PtukXuzaBUWZIRDc5f0cw3WgcWLbWzY0qA/5QAgqm+Zh8z0vNP8wFKIkpD+H
 g9rBgPhWwBiza6CSHNZGWq/vxPAuobsUg+n2pnxQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MJmGP-1ioOc03GLB-00K9Cj; Sun, 01
 Mar 2020 14:17:33 +0100
Date: Sun, 1 Mar 2020 14:17:01 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: vt6656: Declare a few variables as __read_mostly
Message-ID: <20200301131701.GA7487@ubuntu>
References: <20200301112620.7892-1-oscar.carter@gmx.com>
 <20200301122514.GA1461917@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200301122514.GA1461917@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:flahmUZ+XCyJDKb/i7dVnEQwMGQN2TI+cxJTH71Ial7fb6bTqpw
 JUofBNqjwImhBYRb+IGDBRxp1rr9K8cXJoeZSb3ihw226qS1ArkxPlsZUAxL35tS3IeMIie
 +zxKxxnvIotDwYVq6Yk/oT5N6fMNTJYAOkFkEgZJQ//jOMjbrOL+JNyhioCOoAYjbDAKCrN
 3MrrMqFHoXz387tcDb6sA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:w1aCZ1/OF00=:cyTbnXZ3HdhezYQw03ztdO
 G+tU8TQFOsLj9awMj+WHXZuJMxsr3mzJStYs4Bc3AEapVu8IuvmpofZ/SGCgSmli+oEz+B3Gm
 TvjbHyjjqDMh4SBH1JxLo69G84CjgnSPYkM/k1qmzscM2yTZxW5MxYF7UbjzudHWmKPxzWbtF
 vzYy5cXJZxI1U9tjHGwzO2PPTQiri+6kg+kgWOpsL1DV+giPAirVZ0fbJltfSS10HDYsT2onJ
 GLAX/o1pBgRGPAWjAGpGBnGIiahq5WUWNmbbNLGS4/PGeCwo1lTJYT//xo6TaDWNPigC6PMKX
 guM098mPoTXTdAxzXLWI71c3T7RtH7FBjxVgcXf4fSnMtcRW5mbIa+Mqu26MNICuE+m9eZLP8
 5Y+bjil+d2YRQZBiOEN1AcOYH8bZvKd4jHdqPYFm7JqHiyvYTuKLrnNCPDz6siEQfSmcWjEmb
 T/CrF0/1kI9kI/njW4WNpqgXD1dmDu6fOWQC3XTL6xrkUBV3vl8vucChmxFrPO/GncvRcVm4H
 XpREjwXUl9fEJRAulE4+QQebli+Y5BTjY0bnRSrrox/XBeHhrpKCj3MH6dkerBMBaeohV6Nkk
 COzkTJPbZU9yhAm60wAS/WtVkyidp4i/Gs20YikHImeosZhqc4euFUKO6QGiq4lQ7h5bXoM9R
 k+VDyOUv2kJscu9kCdUm570hEgUf58+B2q81J+DWzqxGl5dTH4qJJEwMtg6VqJTgwNJvJTYwU
 IMNIYKNLBEmheWr22HG5d1IAHdlPWudOH7b2s/kjo/lzrvvpNEExi04vijAFxIYQjEZTDCuiz
 tjpkq4ygrBbgs6XWtPfsCTilISrSiZlS4gMRw+je2GyPJvKlwTxWEUEpeoND788eTDHMgDFsw
 hwx60/K5T540hwmNGABwhlv8E7PgeWxYZ4kv73WbJBU4hZrweEKmwa1mr1z3Lo9iuyEYtziv+
 oPlVgswEHfd1udW+jdEn5MBo2Z51gcIgjhL7YewzU5kl2BANjgl8KBcnmeRrmwDqwsd6qbpKW
 8g+QK9O8AzklySoovRpPvm/tA5UY0xPL3D3TxdtK+JTfEpbb8Nn8cHgf2iiWaQsGSeKIXuzYQ
 r/elXJpw4rDcILw4wVbaWylZIWp/xp4KkFm4QnLHwBWlW/kgl9N+saO8wtizYBsBI4fQ4tIDm
 fzE0IWWjTO3zBIcBk3j3PkGVjEfqw7CKM0ak91g3L/OUuCCi5M0DcLZkOzZeJkgfbLfSJ3Xza
 Zz01ENx8LdrqINqKc
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
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Mar 01, 2020 at 01:25:14PM +0100, Greg Kroah-Hartman wrote:
> On Sun, Mar 01, 2020 at 12:26:20PM +0100, Oscar Carter wrote:
> > These include module parameters.
> >
> > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > ---
> >  drivers/staging/vt6656/main_usb.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> > index 5e48b3ddb94c..701300202b21 100644
> > --- a/drivers/staging/vt6656/main_usb.c
> > +++ b/drivers/staging/vt6656/main_usb.c
> > @@ -49,12 +49,12 @@ MODULE_LICENSE("GPL");
> >  MODULE_DESCRIPTION(DEVICE_FULL_DRV_NAM);
> >
> >  #define RX_DESC_DEF0 64
> > -static int vnt_rx_buffers = RX_DESC_DEF0;
> > +static int __read_mostly vnt_rx_buffers = RX_DESC_DEF0;
> >  module_param_named(rx_buffers, vnt_rx_buffers, int, 0644);
> >  MODULE_PARM_DESC(rx_buffers, "Number of receive usb rx buffers");
> >
> >  #define TX_DESC_DEF0 64
> > -static int vnt_tx_buffers = TX_DESC_DEF0;
> > +static int __read_mostly vnt_tx_buffers = TX_DESC_DEF0;
> >  module_param_named(tx_buffers, vnt_tx_buffers, int, 0644);
> >  MODULE_PARM_DESC(tx_buffers, "Number of receive usb tx buffers");
> >
>
> Why?  What does this help with?

If we declare these variables __read_mostly we can improve the performance. If
these variables are read many more times than written, each core of a multicore
system can maintain a copy in a local cache and the time to access is less than
if they use the shared-cache.

>
> thanks,
>
> greg k-h

thanks,

oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
