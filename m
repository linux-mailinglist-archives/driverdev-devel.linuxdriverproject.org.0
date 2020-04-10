Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 112E51A480A
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 17:59:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4D13F24CEB;
	Fri, 10 Apr 2020 15:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sISOoehsEBjs; Fri, 10 Apr 2020 15:59:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E72FC203C8;
	Fri, 10 Apr 2020 15:59:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 842441BF27C
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 15:59:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7BF1186B74
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 15:59:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KDrByO7ATyyb for <devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 15:59:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1B9D286AC1
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 15:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586534365;
 bh=1F93Ep3etTDE7a506QogajIZjQjOu07qM6i9ZlQqgik=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=AI8iO1seAAXv7gLlfOonQDJadbyZEEVwZ/KxcDsROwOqKIZKapwUomeZRtm71s62o
 YoGGCu84CYhUfWD9md3mIdDv8wnqs8o/XVj44eS1JfKli9ErJ9t96/kg43auPw2iuY
 HPg6VSGRh/GPZFxYAcppjn5jUuaDL1287kxVmlS0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MGQj7-1jUvkP48HV-00GoHi; Fri, 10
 Apr 2020 17:59:25 +0200
Date: Fri, 10 Apr 2020 17:59:11 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Malcolm Priestley <tvboxspy@gmail.com>
Subject: Re: [PATCH 1/2] staging: vt6656: Refactor the assignment of the
 phy->signal variable
Message-ID: <20200410155911.GA3426@ubuntu>
References: <20200410112834.17490-1-oscar.carter@gmx.com>
 <20200410112834.17490-2-oscar.carter@gmx.com>
 <986e8e5e-245a-cc70-2c6f-8ac3a4a485c9@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <986e8e5e-245a-cc70-2c6f-8ac3a4a485c9@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:ou8M4Ssva0Szw+pYRlRW+QGxsgzYCNwOuEqt2DeZalYu9o6IK0t
 BbVvcNUZHNR0a31haR2XMfPU+3sL1v3raf0MQ0kPrWicL9JoyaKvZ75VOM47MI7QBvDJuY3
 XL+JjN58HJ6ujvnyMooID3Oz4t/AjtctiNuY6T2uRYlAVQqFhzBEqkKSWNnHYV/nporOhKP
 bZKbxFeLoqFk/i0cn6wKg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:9VV6u/D4l7Y=:mO2wgneHoaRuHlHrH/uy+1
 BXUGpgMTrZi5hIfwjO+1wbqyJplB8rgr8dVLOHDGhUE++fluahrepCOUlSIpv7v9uJTaBaQTI
 EBNT6XLw3LNI/I2gq0vic4EMa1Ii/iGpwiTeFKrcZp+f+88K6nstfTTcFwY+cD40O3KQO4PGz
 kanEFarjWh1IQRRjQB54g0WGAOoqjlQ1JyDUQKQUt2KcUq9w/kMIquGFTxzorysuq+1/cwBmg
 V4ub/73/engaDboqcFSUuhZS1fYsn+BUYUlFyfDB6v/yHKFU25P/tlpTOTzUab07QLh9n644V
 +T5Qm9gJz0epZTfqJtLqqV+f2F6Apyb6QhUocKWTny3mx4b1jHKGHyF5z+SQ+i5SQsx1TXlhp
 Wzs2Vx/zk6oixG6KGea2Kk8M+Ffpkm70BhG6GkGo4CdYd6YXNI0XsonwMoLTYJbuf+PgNiJp0
 WVayK7U1GbKGKprUdTNVWxbRBfbo8gtzXeYQAUXv7VZmO26YZloKFRpw2bpAnPgvpeZ0rgiN6
 7gFwNGUNripkYdjFrA2a1TORd9WJo/L8oL55i4OiupFIq5MEl1ET2H9o3wFUMQY/HerOevIRw
 YODlvCFLXqfotOzHB/wDh9Wha3ZVeoX6S7MsG5yAQHFqBNdSkux7IIn42byYKpn4mef0RFUVD
 RbNyGqqO5w4sYdM18YjXbVQlynmkaWqriQiyUTAuzh12FnNo+j01Gk5JCQelr4JcRH68TUi0L
 M716fjE3wc15HDjuYugwdbctHXdNx1yR+UTPpibrAh5/gpYKx7EED+TI0t6WPHr/CzaVGn5VR
 v2u9L1qt+m5qXC9CW3mdip+chDkyC4k+OdHMqghMuJEulF4lIpuxNpjWMPC6yZcPVJeXRC2zL
 dNIjV15NiDkTd7Li53Rb69fw+95I20N1iqhPu4Z0CzIbwsoDwgbOLBLgfkLSmFxjb+96wU9HS
 1R91/Ab+hlnWOOmD5uKtH/7tZWf4ULWFHhpk8hTGXGH0CFNwlYsRM+wYzvbehnq0ilqkcJ4uY
 KABExsxbO42Ji1Pp2y2E0iyJ3ovas55qH6iXgJJJgLCqlkIxrmlebwvOcrYkfcT2QZR/Adyw7
 OvcNg9jTBgLFy5+3NZfqcvoQWTq73g7UDEBUElZG5U4aZSocaxa2geqxaooa6t3SWvs8ontD7
 WRQUtjx0CceirQXf9G4QxYbILlxQFpTDKxG5fWIcpVD70VRkvY0Aydz3B7azbUwPCT0FGOMBY
 N8buYtYIKv9QzqVbq
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Apr 10, 2020 at 04:37:59PM +0100, Malcolm Priestley wrote:
>
>
> On 10/04/2020 12:28, Oscar Carter wrote:
> > Create a constant array with the values of the "phy->signal" for every
> > rate. Remove all "phy->signal" assignments inside the switch statement
> > and replace these with a single reading from the new vnt_phy_signal
> > array.
> >
> > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > ---
> >   drivers/staging/vt6656/baseband.c | 101 +++++++-----------------------
> >   1 file changed, 21 insertions(+), 80 deletions(-)
> >
> > diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
> > index a19a563d8bcc..47f93bf6e07b 100644
> > --- a/drivers/staging/vt6656/baseband.c
> > +++ b/drivers/staging/vt6656/baseband.c
> > @@ -115,6 +115,21 @@ static const u16 vnt_frame_time[MAX_RATE] = {
> >   	10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
> >   };
>
> Actually you don't need the second values

Great.
> >
> > +static const u8 vnt_phy_signal[][2] = {
> > +	{0x00, 0x00},	/* RATE_1M  */
> The driver would never attempt use preamble at this rate
> so it's safe to include in with the next 3 rates
>
> > +	{0x01, 0x09},	/* RATE_2M  */
> > +	{0x02, 0x0a},	/* RATE_5M  */
> > +	{0x03, 0x0b},	/* RATE_11M */
> just |= BIT(3) for preamble.
>
Ok, I apply this OR operation.

> > +	{0x8b, 0x9b},	/* RATE_6M  */
> > +	{0x8f, 0x9f},	/* RATE_9M  */
> > +	{0x8a, 0x9a},	/* RATE_12M */
> > +	{0x8e, 0x9e},	/* RATE_18M */
> > +	{0x89, 0x99},	/* RATE_24M */
> > +	{0x8d, 0x9d},	/* RATE_36M */
> > +	{0x88, 0x98},	/* RATE_48M */
> > +	{0x8c, 0x9c}	/* RATE_54M */
>
> Again just |= BIT(4) for PK_TYPE_11A
>
And this one.

> Regards
>
> Malcolm

I will create a new version of this patch and I will resend it.

Thanks,

Oscar Carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
