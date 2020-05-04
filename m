Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBC61C3E56
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 May 2020 17:18:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AC3BD25BD3;
	Mon,  4 May 2020 14:43:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UlMSs-0qzQsp; Mon,  4 May 2020 14:43:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8715823143;
	Mon,  4 May 2020 14:43:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C4BF1BF306
 for <devel@linuxdriverproject.org>; Mon,  4 May 2020 14:43:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 151BE86C06
 for <devel@linuxdriverproject.org>; Mon,  4 May 2020 14:43:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EEQ1pXTRU47a for <devel@linuxdriverproject.org>;
 Mon,  4 May 2020 14:43:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5BDDA86ACC
 for <devel@driverdev.osuosl.org>; Mon,  4 May 2020 14:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1588603410;
 bh=rhIgO8knhk5KrlNGr7M8hfHM41dFa9/8X/4InpEenSg=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=B1gaVhmyZyPDdbVLXr5Ifrmiw46DQtjxWE99RRUd72YfouBe3BSMmMY1C1vU2PdLp
 oKhAOPu+vEleC8Gyazt1+4k6qnww0rlStbErUggsU6lC/Lm7kcYbO9H4bPNE8ESgV2
 O3eNQ6dXDcvKJoqGl7tlY42lri+m/NC5T17neavA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1Mqs0R-1ijcJs48NV-00mrnC; Mon, 04
 May 2020 16:43:30 +0200
Date: Mon, 4 May 2020 16:43:13 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Joe Perches <joe@perches.com>, Ajay.Kathat@microchip.com,
 adham.abozaeid@microchip.com
Subject: Re: [PATCH v2] staging: wilc1000: Increase the size of wid_list array
Message-ID: <20200504144313.GA3213@ubuntu>
References: <20200503075145.4563-1-oscar.carter@gmx.com>
 <d75b7f64-0ba0-65e9-ea4c-cc87b3a51a10@microchip.com>
 <d3e07dfd0efe21192d172b2e4e7d4a489a4fcc62.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d3e07dfd0efe21192d172b2e4e7d4a489a4fcc62.camel@perches.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:WaZhZUrSWFeiDdnjwq+IVE7oWmd1xxkdZbdW99c6kzggZTPRiNv
 QUdZfn0Ngh91lWlISAwTQukgGeprj/C+AQzp4OqAMeTojVIgJslagmrfBMTeyAXLgV0rBP+
 etq6ZKEXPE8zx66U7MCDUgEcnxqrmxw3gbidHj66bcWncITAGQYh18DkHmP7D/ISkwRBkN1
 Jvb6R15eMZeV7sJ3Hs0hA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:53f5jrXMiwo=:9TYZyTRs4aL6kPTOUX/+in
 3o0rl7+SJ2oxyNkLC1uk+41FIl5A+vDAur93nDr45RJdENFhmvjiRKJkNo1xinoicPsrk6rZx
 QvSSerQxyys4GBhXGBSLklMOLCF7CyNkz1kK7RRid7v5i58LPIfJGscy/daOmfkyi7/VNibGd
 2RX0JsFS1MSO3trlJgN2TkqbXgmwJYM3WYJmBJSAxdXcq6MxYZUldiSHRsiEn1L2XWFnHQba6
 YzyjBdhu7Zq6lyezflEaGkZ95IZqL/06J/PLDYdhOMBZdzhlsWzfpBV6Q3zdDdL2q97w7YtqQ
 DmzYpPpuvdnmhuM/WqV3hm+/FMkMNjAH0aIhkjl0btLiDqzaize10BIMw+c4h7GRO2ysU9wU2
 mGj4GN8WxZ1I6mxEngb5DOEbADDmD5+H+Dx+INpU3IFG5LDC7w2aIYK9CEiSZWVG9bekW0f0e
 OiobrDCazsJjqxqnmqd+3fwYxTHT0jWWkBR56fsS5J8tUaenuZPT5t4yI5Zmvtvy4s43YI97G
 dr9imm0ob6pYq3T+5at+1HYWof9M3kzTskJG1H4ZfoT2c1T01Iyj5eTlJ+XkaYVjyq0ZNYTcJ
 0GZlRdUdpEkly8rnxbi8HsEC1ZPaoZVZyUQ0X+XSDXf4Yp+yXSkG8x+Flrmvh4ZTYV7PGZ0MW
 Q7Vz+KHRBqNzd/2XFZmXVXn6BLzpmxZ2DpJz/5Jvf3xe2v2+6rCTZSIDfmfNJ3GX4Huu6RSjD
 yGUuE7jTPTz8nqYji8wN/pem//zdC9/kJWj5VNmetqa+mBCBF8I3v429Ma5kVhY2Ktp+faAvT
 1FuUN0VBWgADF4ws2quAEJSa30rPI9koa0z7/cJ9FV13A1jYXIXV4hVRSegy0H90Up5N7lYr9
 H4f7cMbDkKdMq5h7cIG0M40E9nM4LzK/oMqRVBQskB28ufQocESpIq5cfayEY77gnsYhg8vjv
 W/NZoeGzZZy6tA9HgcC7nar8c6j36UJ32+0tV7VC73rt7yyqLUH0jNM92yKGR5iIcvcXNGzWf
 RWKfQCHEbJPwKavEbBQa+NzcLSab6qbfmimZiir3/gC8R1pu5bY3CsI2sAjqFtdE4WzLDp2MA
 mpsAYgyl3pXlgXf2hEJYGLCw9e9Xu8hJMB7aLyJm5pfTqwaWQKv1goAmKF/Mb2DUaw9Wy3tlt
 YZQFnKCmQbKFVNzgKxWcK2fspbyPTZFEmZQ8qLyvBAspG1ucBAYVlcBLJ9pdY4yA40e7o19Hi
 DqX8meZuUttwphwlu
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
Cc: rachel.kim@atmel.com, dean.lee@atmel.com, chris.park@atmel.com,
 Oscar Carter <oscar.carter@gmx.com>, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-wireless@vger.kernel.org,
 johnny.kim@atmel.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 03, 2020 at 04:29:53PM -0700, Joe Perches wrote:
> On Sun, 2020-05-03 at 14:52 +0000, Ajay.Kathat@microchip.com wrote:
> > On 03/05/20 1:21 pm, Oscar Carter wrote:
> > > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> > >
> > > Increase by one the size of wid_list array as index variable can reach a
> > > value of 5. If this happens, an out-of-bounds access is performed.
> > >
> > > Addresses-Coverity-ID: 1451981 ("Out-of-bounds access")
> > > Fixes: f5a3cb90b802d ("staging: wilc1000: add passive scan support")
> > > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> []
> > > diff --git a/drivers/staging/wilc1000/hif.c b/drivers/staging/wilc1000/hif.c
> []
> > > @@ -151,7 +151,7 @@ int wilc_scan(struct wilc_vif *vif, u8 scan_source, u8 scan_type,
> > >               void *user_arg, struct cfg80211_scan_request *request)
> > >  {
> > >         int result = 0;
> > > -       struct wid wid_list[5];
> > > +       struct wid wid_list[6];
>
> This looks like it should be using a #define instead of
> a hard-coded number.

I agree. I will make the changes you suggested and I will resend a new version.

> > >         u32 index = 0;
> > >         u32 i, scan_timeout;
> > >         u8 *buffer;
> > > --
> > > 2.20.1
>
Thanks,
Oscar Carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
