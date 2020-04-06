Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8873019FA1B
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 18:28:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 428CA88278;
	Mon,  6 Apr 2020 16:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K7AIlVRVrjbC; Mon,  6 Apr 2020 16:28:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BE943882CD;
	Mon,  6 Apr 2020 16:28:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F1321BF307
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 16:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9412B204F8
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 16:28:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cZPYs9gVlIPl for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 16:28:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by silver.osuosl.org (Postfix) with ESMTPS id 151E9204D7
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586190475;
 bh=FRIKvjiq28REAum1cMDGhYM9/roKmK1fSCayFBmXFgU=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=lWOyYvOYa11ecx4G8duAfFNsE3LC4IB0vGz8O5Z93F4cOppirBDoLZR//WDCBkyVK
 8I4EhRdxsoYkpxjRW9Kuh/4IjO5ij9aq3DD3SIGenUQHcQAmq01HtWR++e05RSY/+4
 9m19OuAXaWetgfKivN44k4MJDtjvXyoGlKEhYIP8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MFKKX-1jWE7O0293-00FjJI; Mon, 06
 Apr 2020 18:27:55 +0200
Date: Mon, 6 Apr 2020 18:27:42 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 1/3] staging: vt6656: Use ARRAY_SIZE instead of define
 RATE_54M
Message-ID: <20200406162742.GA3230@ubuntu>
References: <20200404141400.3772-1-oscar.carter@gmx.com>
 <20200404141400.3772-2-oscar.carter@gmx.com>
 <20200406111323.GD2001@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406111323.GD2001@kadam>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:T8RilL9H1r3t+wcwqfqUctvy8o8lnGN+LwBkrhd37tZNI0Hg7hX
 sbLPA+0DkJwEFiKrwbe85E2U2V3eDR0Hp0bEnQymF023ct09DHkfUWE+kAUY9DlZgfKnPwa
 8ULu4PKW1SInKncw5yziKJjWg1VGvXbX3vcaF1kMV1ZTBK3rZou3XfGBmLcv6eMGinOA5kc
 X0ysxxyHJ6uvh22pEKk6g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:xi8YNRbZVgM=:+WNzK0tl47HV8TcxIqRdwF
 +a3Cm6phfalLHfZ70JO9on5BA9sswVp6Be8Ed1zZKPuhYb8Eyv5U2ofDHR9elcuS7qTvZ8igg
 qBx9X4tfHvsMNt+Bpf+fh7+zYJbN98aXHPocMFAPCQTsVWRfZyRIaBS0MLgbGi4JAtmxLzkxG
 XDwNZRRwv9+vIbRv+6cuTMIaYUg/zq3Xjmf7XCiBujy0cooBIuuRK+19Bk98XRjMYTMMry32H
 KQ8M/8I5x6J4Leantd5O18jNN29w3sMzV0mPgs+TAFBu7wWaAQ5awxHfSFgwn2f0tr7sp/P5c
 tbER7ozPk1ZjRZ58g3lEbwvH6gokjOse0C86awSFgbtOgVty5YlyiQSjn5lp82GInkfYG7Ssn
 iWprGKx7uAT88ZEj48caWkyoEHe+1n9yI+bBr3EY6JSk7fcL2DvLrlAeFaed2+dKo6Q4tqNJ1
 bFZ4BgygxG1ZFYP0+cWAUewLQAoZZuQKwBfrukzGzzeMOmyVrxKEcHFEyvCTg3SQzkI+MgfPV
 F61ymjO//wfAqHC435NrjdxoF/94aDDPI47uN80ZUBvM8MPf9jxDZwvV8YYXHNA04+9nPkxsP
 WlHDpbtITSRME9TpiP2HGLLxDoPN9wXaEGSRxUnDl7K3DdUI1uo4V03RGZ1yHN4Os1DLuWbPO
 ZwCgfdM5XW0CCc5/K2trK5h7S5I94f2LGdrGW5UMarWO2QqB6DpECbOqqPOlPc4iakmDOkfkd
 VXRD/eo4AQRzLE8stsOoO+67FbjryL2+C9h4e8qEgQbG+GyPnSJgaBtNBnEvlAO57j4Nuc7Ah
 gLk7z3yMmwG7pjpw1epmaKGcErqmrsEtWQmK7dCfo0szAsDPqC8ZEvPic47vTcKl3KxstNe66
 OFM5+xkoxv1z9DHyr0/VEcI/xIL3tfhh14xMA4+W/VyPXHZXNroPUEwutj7OmayClcENBqhL7
 kd760vg1QJNgcKZbMgCGfDbDcSGIKDHgNA8KOEt5Dn3zjzq2CLjGcQrzUmiRlPAIS16gTiXV/
 yDlCI3cHIXukKVmbcdraLOVDoQu7G+a6CVOz8wTwHLFl6S/+p7dny+eJ+qkqmmq6Og462+/m6
 oMLOKkk3fy0wXe8a38kVzZScpS4z0X6RthkdLFyIRNLLzQ29K+TsmeXURi/WB/Tb9hn+QzcLx
 ElJIT2TUYYfXmoRCasSiJnd9sY/yxZ8pO36/GRJ3uXPheeOCIYzehtBLNvAgGoI2/vwPf8Uam
 LK2tphXxiPI6wjdQL
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Forest Bond <forest@alittletooquiet.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 06, 2020 at 02:13:23PM +0300, Dan Carpenter wrote:
> On Sat, Apr 04, 2020 at 04:13:58PM +0200, Oscar Carter wrote:
> > Use ARRAY_SIZE to replace the define RATE_54M so we will never have a
> > mismatch. In this way, avoid the possibility of a buffer overflow if
> > this define is changed in the future to a greater value.
> >
>
> Future proofing is not really a valid reason to change this.

Ok, then I leave it as is.

> We have to assume that future programmers are not idiots.
>
That was not my intention. I'm sorry.

> The only valid reason to do this is readability, but I'm not convinced
> the new version is more readable.
>
Ok.

> regards,
> dan carpenter
>
Thanks,
oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
