Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 171FC17CCD6
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Mar 2020 09:29:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CDB5520419;
	Sat,  7 Mar 2020 08:29:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J75Gms02yns2; Sat,  7 Mar 2020 08:29:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 930D62034C;
	Sat,  7 Mar 2020 08:29:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 436701BF2BF
 for <devel@linuxdriverproject.org>; Sat,  7 Mar 2020 08:29:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3EBEC20356
 for <devel@linuxdriverproject.org>; Sat,  7 Mar 2020 08:29:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 17Ok2wPRRLkp for <devel@linuxdriverproject.org>;
 Sat,  7 Mar 2020 08:29:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by silver.osuosl.org (Postfix) with ESMTPS id 58AA02034C
 for <devel@driverdev.osuosl.org>; Sat,  7 Mar 2020 08:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1583569763;
 bh=h79C+D9/EzcE+etbcbZdLaCiNxPE5dspkTyds0Z1D14=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=Cmfk0Dxr0eO5wFGCFqKBoT264bq+7WbFiB/B7ewBbTVA5VkXU3L8QD4W62qXxHRMh
 DHkdLH5VBh9iIG0ssxXinGvo5wZEzZaBqp8r6XvK/olKFS/tCK71xdPfyqU7wwjacZ
 tyu3hfj078NEUnY8GTMmjpHJWaM7nOums7w4v7iI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1Mlf4c-1jaVyi3cwM-00iixk; Sat, 07
 Mar 2020 09:29:23 +0100
Date: Sat, 7 Mar 2020 09:29:06 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: vt6656: Declare a few variables as __read_mostly
Message-ID: <20200307082906.GA2948@ubuntu>
References: <20200301112620.7892-1-oscar.carter@gmx.com>
 <20200301122514.GA1461917@kroah.com> <20200301131701.GA7487@ubuntu>
 <20200301150913.GA1470815@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200301150913.GA1470815@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:/AbFBE0f0Zp6NqvRYmi/sHN078hyV83hTiMzs2AAgg1PNV/aoct
 SHvt/qID4eDmdTU1LS0/w7sHSKXUi2nxKLdi8Vu9Cy+nGT/2KsmP3Wlo7EJPGd00Il3HtHO
 3YfIpUmqfnrMbIeWroX+fWlEzMu9fhfCq2rsYaS3yediHnoRj14g6SPzciLxij6d4/F0qCz
 oNU82aIlLKA2NfGqv61OQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:MNFbH05vUpg=:0e7OB0RPcLe5GHyg0KXodm
 wEU1MNmm2cozk5fuk47ptom9QD3bvKlQdDVdp3Vah0issdUV8VUlQpzy+A+WRG1iO8vIDuuoQ
 biNOb6h0C66uF2yibEqzZsZKDi1O95PTRKcajRchzbQkM22DyVy60A4F9JJbxEVXiyks2j+wi
 O2ouYM8EtHKqt/JuO+85dLDH6EZKHAhdNV0sVzcQl8QVR6JIT2NBIvbmQJt2BXVdA4kFn2BgP
 EbwZbWENuPEahVxv89QAzJDHL/7h1zdoZYQ/5MeaB3gfPyObpydZzP3fd4G7Wivqh0slP7cHo
 9kl4C3qG7inzIy4GrB5RI6MNUK4S8LcanN9ypjBiA8ZpHqonSNlHF2O+a7aWjZOg1hFWQylSs
 UBzAltiZ4DLfsSNrjdr5lPTfoU5XAN8GSzfmE592H570vHfMfmzMwS8np2owRC/ts+k+zJYq8
 Ju3V+SiRgyK7rRpPqXSBEQ963KoMZ8VDhOx5BnbI4tmficlKF7F50rVgkKIGXiSrWlYwtpsdK
 l8peJKwFNnj2cWCdDCwZu7fD+qR8V6xPS0FIcKHRfUEkT3yNw/lStK4Mix+aKjGN6rVUOAbj/
 xeqo/Jx0Jo2uBwoGJxrGyPK4ncvOTfpqwVzJ20i6x/qTyTLfQr7pfkI+h3LdgjDSYufosVRZz
 al9VlXAjldteorzdUYRtVVoBsU95LxrJp5a3RPcK65sb/K//VWINySOo4DFl8iyciSDGohERN
 Vm390r0wS4T0/w2oZXwM9cLmHBQfmF/u+Q+XiG/yG/u41N1tnbiGctnRrwUdUw7iHt5LMDxNk
 60Tuz2Tb/J44u5qowXWwLqYCiKYSAuD+9jM9ChLAYDkXEqw5AAaikW8HGeoUKzoevFgXZu0NU
 oK7AhcSsEOPgVAihwbrbhjZEbGUOw52FNh/ap04UbvEr+iLH1XflC3/tLzdIfVguPQxr0W+ER
 1FV+t/OyYyPqa80bmVpC8Er884btTCDl7qeFpS96GxrZkLUzrCapWEWV4bl/zXbWkEiAaSMSx
 ZLpmcCnXoaFsoq+GYiQsmybhWwoS9DJe9yitsRODq+x/qnI5DCpBwf8jzEEhOS5en+kBrOIYy
 b++WAPjU5z8SHmPUX2R9mecOmefbKuBsBsanhMBz/BBqkXJziUkaIaGTSyBM7fsG1hVUsipXk
 TjpmjxIdruGmEb8Ie+Sdz+zRiCviS03XvSryRInavZd0Hi4diW9MXILfX5IkUcO754iQU3jbG
 ETstdqqYPSsVHCIq6
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

On Sun, Mar 01, 2020 at 04:09:13PM +0100, Greg Kroah-Hartman wrote:
> On Sun, Mar 01, 2020 at 02:17:01PM +0100, Oscar Carter wrote:
> > On Sun, Mar 01, 2020 at 01:25:14PM +0100, Greg Kroah-Hartman wrote:
> > > On Sun, Mar 01, 2020 at 12:26:20PM +0100, Oscar Carter wrote:
> > > > These include module parameters.
> > > >
> > > > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > > > ---
> > > >  drivers/staging/vt6656/main_usb.c | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> > > > index 5e48b3ddb94c..701300202b21 100644
> > > > --- a/drivers/staging/vt6656/main_usb.c
> > > > +++ b/drivers/staging/vt6656/main_usb.c
> > > > @@ -49,12 +49,12 @@ MODULE_LICENSE("GPL");
> > > >  MODULE_DESCRIPTION(DEVICE_FULL_DRV_NAM);
> > > >
> > > >  #define RX_DESC_DEF0 64
> > > > -static int vnt_rx_buffers = RX_DESC_DEF0;
> > > > +static int __read_mostly vnt_rx_buffers = RX_DESC_DEF0;
> > > >  module_param_named(rx_buffers, vnt_rx_buffers, int, 0644);
> > > >  MODULE_PARM_DESC(rx_buffers, "Number of receive usb rx buffers");
> > > >
> > > >  #define TX_DESC_DEF0 64
> > > > -static int vnt_tx_buffers = TX_DESC_DEF0;
> > > > +static int __read_mostly vnt_tx_buffers = TX_DESC_DEF0;
> > > >  module_param_named(tx_buffers, vnt_tx_buffers, int, 0644);
> > > >  MODULE_PARM_DESC(tx_buffers, "Number of receive usb tx buffers");
> > > >
> > >
> > > Why?  What does this help with?
> >
> > If we declare these variables __read_mostly we can improve the performance. If
> > these variables are read many more times than written, each core of a multicore
> > system can maintain a copy in a local cache and the time to access is less than
> > if they use the shared-cache.
>
> This is a USB driver, performance is always limited to the hardware, not
> the CPU location of variables.

Thank you for the explanation.

>
> Please always benchmark things to see if it actually makes sense to make
> changes like this, before proposing them.

I'm sorry.

>
> thanks,
>
> greg k-h

thanks,

Oscar
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
