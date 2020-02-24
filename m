Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4C816A4FB
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 12:36:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 86980861E7;
	Mon, 24 Feb 2020 11:36:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F4MOdbO31mgx; Mon, 24 Feb 2020 11:36:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD5C886132;
	Mon, 24 Feb 2020 11:36:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6E7281BF2F1
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 11:36:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6ACD386C7A
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 11:36:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 98xNbS-6dyUk for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 11:36:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx01-sz.bfs.de (mx01-sz.bfs.de [194.94.69.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 115A986C6D
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 11:36:17 +0000 (UTC)
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
 by mx01-sz.bfs.de (Postfix) with ESMTPS id 5D528202D9;
 Mon, 24 Feb 2020 12:36:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901; 
 t=1582544174;
 h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WQfCLb+2eT+U7A5VwBTNyMYdMQKUx4lCZB/1s9gm2Io=;
 b=uf58EdpYHgG/inEbgiLTnQ5LWQDAsIiWHmkXOr9sYNHfbGmeqAN9EbAnZ2O8YZdZGLrDMx
 RBcvSO7b2Wp4wbKL6gYz8W8Jl1G8Gbr3+/VcpY114Q74iUSfB1o9YnfMdM67cdFE+wGTct
 6ZEAqygTrwyMCZzRpA7uhldwKu7AwE+rVZvg4ze2JgiBJmJXXkotHMC7m9qaFWtnF3lIah
 uJExg3dRtK4K6+o/EF7MAvl8L9+ywuWyr2bPt/dvgkC8LBIiCB9kz/z2Suj5I172loAzyw
 htLcUD9xoota4LhorlwtaWFbuo0ecqsUqyTmAp6WRY4ch8fsTcCcz0GXh6ubcw==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Mon, 24 Feb
 2020 12:36:13 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.1913.005; Mon, 24 Feb 2020 12:36:13 +0100
From: Walter Harms <wharms@bfs.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: AW: [PATCH] staging: rtl8723bs: core: remove redundant zero'ing of
 counter variable k
Thread-Topic: [PATCH] staging: rtl8723bs: core: remove redundant zero'ing of
 counter variable k
Thread-Index: AQHV6l3vorwXgv50W0ysut7cburs2qgqLndI///23ICAABIfGA==
Date: Mon, 24 Feb 2020 11:36:13 +0000
Message-ID: <af6f814014104e3c899c5d0f4890beae@bfs.de>
References: <20200223152840.418439-1-colin.king@canonical.com>
 <5f875f84e6014d2bb5b78f71dc2831a2@bfs.de>,<20200224112735.GC3286@kadam>
In-Reply-To: <20200224112735.GC3286@kadam>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
MIME-Version: 1.0
Authentication-Results: mx01-sz.bfs.de;
	none
X-Spamd-Result: default: False [-0.96 / 7.00]; ARC_NA(0.00)[];
 TO_DN_EQ_ADDR_SOME(0.00)[]; HAS_XOIP(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; MIME_GOOD(-0.10)[text/plain];
 RCPT_COUNT_FIVE(0.00)[6]; DKIM_SIGNED(0.00)[];
 NEURAL_HAM(-0.00)[-0.981,0]; RCVD_NO_TLS_LAST(0.10)[];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 RCVD_COUNT_TWO(0.00)[2]; MID_RHS_MATCH_FROM(0.00)[];
 BAYES_HAM(-0.96)[86.71%]
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Colin King <colin.king@canonical.com>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


________________________________________
Von: Dan Carpenter <dan.carpenter@oracle.com>
Gesendet: Montag, 24. Februar 2020 12:27
An: Walter Harms
Cc: Colin King; Greg Kroah-Hartman; devel@driverdev.osuosl.org; kernel-janitors@vger.kernel.org; linux-kernel@vger.kernel.org
Betreff: Re: [PATCH] staging: rtl8723bs: core: remove redundant zero'ing of counter variable k

On Mon, Feb 24, 2020 at 11:07:55AM +0000, Walter Harms wrote:
> diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/rtl8723bs/core/rtw_efuse.c
> index 3b8848182221..bdb6ff8aab7d 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
> @@ -244,10 +244,8 @@ u16        Address)
>                 while (!(Bytetemp & 0x80)) {
>                         Bytetemp = rtw_read8(Adapter, EFUSE_CTRL+3);
>                         k++;
> -                       if (k == 1000) {
> -                               k = 0;
> +                       if (k == 1000)
>                                 break;
> -                       }
>
> IMHO this is confusing to read, i suggest:
>
>  for(k=0;k<1000;k++) {
>       Bytetemp = rtw_read8(Adapter, EFUSE_CTRL+3);
>       if ( Bytetemp & 0x80 )
>                break;
>       }
>

The problem with the original code is that the variable is named "k"
instead of "retry".  It should be:

        do {
                Bytetemp = rtw_read8(Adapter, EFUSE_CTRL+3);
        } while (!(Bytetemp & 0x80)) && ++retry < 1000);

good point,
personally i try to avoid putting to much into braces, so i
would go for the additional if() but this is for the maintainer.


>  NTL is am wondering what will happen if k==1000
>  and Bytetemp is still invalid. Will rtw_read8() fail or
>  simply return invalid data ?

Yeah.  That was my thought reviewing this patch as well.

It should probably return 0xff on failure.

        if (retry >= 1000)
                return 0xff;

looks nice,

re,
 wh
regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
