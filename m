Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA18A1C2A8F
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 09:33:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CC2BA221FF;
	Sun,  3 May 2020 07:33:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pso77tZLVO2c; Sun,  3 May 2020 07:33:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6C6BD203BF;
	Sun,  3 May 2020 07:33:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3FA191BF427
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 07:32:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3620D87BFF
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 07:32:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EwMS1cd3DCED for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 07:32:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ADC9087BE3
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 07:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1588491165;
 bh=uoob09LxJLs0gobxKyEW+QtzlTSyxelHj9VSxQ2F+3I=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=HiMHS0lIx0/0O1SwaNLnYMlCmyWwr3H5snvsPBOCdFxRiIr9lNiA4fM/Jm6VPj/6e
 nwawRSCbaBjNFyH0916xk7x+GebGzAD8ykoyE0A88+MVzont9GJTuXK5ZDg5ibJK+W
 6PQZmJ7GvoEIvEjys3He7CK5pBpOedZZfyTJOB7A=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MQvD5-1jpgXC09Xr-00Nz7z; Sun, 03
 May 2020 09:32:45 +0200
Date: Sun, 3 May 2020 09:32:33 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Ajay.Kathat@microchip.com
Subject: Re: [PATCH] staging: wilc1000: Increase the size of wid_list array
Message-ID: <20200503073232.GA3228@ubuntu>
References: <20200501170239.16917-1-oscar.carter@gmx.com>
 <555a8486-8a9f-44a6-3423-78981955765a@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <555a8486-8a9f-44a6-3423-78981955765a@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:1Fk6I+S2UPVYI2zrize4ngz6oBv54q9N7S4nJGLawbHJSt5ui0Y
 8M2hH+s/ELtXfIVx+pzJ0bQt5rCDjbtYKY/adVf2RriQKloHI6G7iLsrrCeNAgrWhXXgo84
 6MPd+xAOpIPsg7NycVOf/Shc1nat+2yKpPIOQVMVsBhLJMmq5nyiNqAKi799xclRSTbfcgh
 pFtLjNnskFcZNIQAPnDWQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:qkozY6zgPOo=:WSVdVn0EuuHnVuX3X/XSm6
 dXewnI1tbpGMn7qX466rUdAFps8i7II2TCVybSFZNLfJ0AiJdk2y/qHX0VuMmw0SPSuCiNhMo
 89M4eyr3O7+stK82zyTBp7U5y3O6fQckqzRLGkyxY7ztMjZ+UrdSBYRxJ4gjhI/SC+PUpAj4y
 S6iLZOZCA3yTj0Ytq0kAhDPflzc/UmUpt/iAPXavFzq2hILxFuMHrGR9btJTYnmL0OQcMpvhN
 0TPdWA088394HLOcwlrPQ5W63n3JawGxKBdhqtWICG3jgs8ujSb/2W7ZyrdEnfmPcqyPqiVPa
 IKlxZbGGP4fM/t/u4NKkFvUKvhIwAsyuqlI7kejmSh2JH4Clo6qlNzvPMAc5B/rQ2gBKvrfYY
 EUmqjnTf13aKLyvFhjbf4TLTeoYIP1dh2knfEdJRRTPRS/Egqho9DbTqNc01STMxKZq5sqULF
 qHc0hBkJh9nYc+aOJgd+DSlukjtJ5aRujclN6r59BVb3rbc/uKnUtLs4JgiJpjPvgCOHtdE1B
 Ull1LAA6+uXZqO9/VDJ3iC8gGPIAEdPJZKOkRF0k+bZiDwPd21xGbR2eHXBic9nsMOL2Hp9e5
 plbSfeQSYaUUkXVpHjbuZcK/L5B8w0E1dxzOtqrIG8Z4IX1qespAGRfaNfQNYu4eiFIPhxAqA
 jtE3esK+mJ2gjedNxNG3veupJSykKvgUBxAoHrXSPIy4j5gxsem+MK+jOMn9yfMJw/jwgmavq
 NKfA1OJ5GlYZfnlTPtJ1FMow26Cy5hdcJFGd99rBx9xkaOnsKOBpVWssN+b5XxbOi2SP8RUjB
 h8q/a40gpJdO805D1KWCSUT/0ApOkyRSgEjCkMWYIJyiCXaLlPx8Tyups/eJDoqsZma+evNJe
 fxAHfUYJch7LTzFJwt0CjjaT4AbhTBpoOJ9cD9O099n5o4ESoICI4rmKbM8vjQfSVhPObI3+M
 XRjBb6CfGWle2OeMXRuw8D++LtUfePg9lqbhGoU8zNfGsmzgh13nplmQYvuNILR3c2C6+o7JX
 lk6XD12gUy9eikQUkQNEz1gMCQQ+El8vvT/QU1nLUR4JUrExHEp+HO/GzBl0Mtwq5YHZVlIQM
 myEu7wf8NPX2yc+JEbsa9nRSylZ50e63CfA1vsgJ0bjQIvi3k7X9cq0isjZJvRECCgupFnInk
 sDOCCY1h4OKc6SD1RXgS/joY2EmheGVZ4q/sGw+m8CEsOC/EH3oN7zO2+gScYIsTMg+goO1LH
 RujQZHKhXe126NVXq
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
 oscar.carter@gmx.com, gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-wireless@vger.kernel.org, johnny.kim@atmel.com,
 linux-kernel@vger.kernel.org, adham.abozaeid@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 01, 2020 at 06:26:10PM +0000, Ajay.Kathat@microchip.com wrote:
>
> On 01/05/20 10:32 pm, Oscar Carter wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> >
> > Increase by one the size of wid_list array as index variable can reach a
> > value of 5. If this happens, an out-of-bounds access is performed.
> >
> > Addresses-Coverity-ID: 1451981 ("Out-of-bounds access")
> > Fixes: c5c77ba18ea66 ("staging: wilc1000: Add SDIO/SPI 802.11 driver")
>
> The code changes are fine. But the correct commit for Fixes tag should be
>
> Fixes: f5a3cb90b802d ("staging: wilc1000: add passive scan support")
>
Sorry for the mistake. I will make the change and I will send a new version.
>
> Regards,
> Ajay
>
> > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > ---
> >  drivers/staging/wilc1000/hif.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/wilc1000/hif.c b/drivers/staging/wilc1000/hif.c
> > index 6c7de2f8d3f2..128943c3be4f 100644
> > --- a/drivers/staging/wilc1000/hif.c
> > +++ b/drivers/staging/wilc1000/hif.c
> > @@ -151,7 +151,7 @@ int wilc_scan(struct wilc_vif *vif, u8 scan_source, u8 scan_type,
> >               void *user_arg, struct cfg80211_scan_request *request)
> >  {
> >         int result = 0;
> > -       struct wid wid_list[5];
> > +       struct wid wid_list[6];
> >         u32 index = 0;
> >         u32 i, scan_timeout;
> >         u8 *buffer;
> > --
> > 2.20.1
> >
Thanks,
Oscar
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
