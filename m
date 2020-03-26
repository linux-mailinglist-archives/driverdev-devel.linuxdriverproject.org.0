Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE0119455A
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 18:22:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0E934886F8;
	Thu, 26 Mar 2020 17:22:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j+8uc3B1bfhj; Thu, 26 Mar 2020 17:22:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB92E886B8;
	Thu, 26 Mar 2020 17:22:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7AE611BF3EB
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 17:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 77C4F886B8
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 17:22:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aBHas9wsXwwM for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 17:22:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 14982886B3
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 17:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585243347;
 bh=MWQpqiFq+1hK9zp12FeAP0ENS8Btp4Us1plOsjWVOA4=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=ionFLP/z5hIMPcvYYdpYjsCoEq0rpFaf+I84HduZC/LtfLDDeCNk6pc97WHph6ZVJ
 j8xUbf6gRkv6WPlnQHLEgCkkkDYCfGOGlyzFa35oFfRPOQshcMjcrCeFvaDfE8wNo8
 GcN1PbgGofKXwYBo8iDv7T7OLRDpUPqf0fJRfF18=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MRTRH-1iudja17wr-00NUbM; Thu, 26
 Mar 2020 18:22:27 +0100
Date: Thu, 26 Mar 2020 18:22:25 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Subject: Re: [PATCH v2] staging: vt6656: Use ARRAY_SIZE instead of hardcoded
 size
Message-ID: <20200326172224.GC3629@ubuntu>
References: <20200318174015.7515-1-oscar.carter@gmx.com>
 <20200324095456.GA7693@jiffies> <20200324131830.GD4672@kadam>
 <20200325091924.GB15158@jiffies>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325091924.GB15158@jiffies>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:HLqxRcmQo28JRdSPp73j2tg1Y8Oyog28LeDWrq1bY2PGNpeNplf
 w+FiAc4Vgo+vp+aHfnauFLt6+tkoivrd+7WWSQ1oYbakn8QuqIOg41G0Q7PJ53ZjBsPNA20
 znqRWWPFpCp2V63I0K0ia5x4yk30Kt+pOoXGZpeP5vmUzjiv8IX5+IXZirn2nz4oyac2iXw
 4+mOsuFVoCAYViHuuP3VQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:0rOYc05hHsg=:YWfhe8q5SwPvx1E1cvHmPp
 juNhBP2AXxFVwySkTWRdQcXCV751daKlHy2ZEfcJrB+3qMG8eXEF9mG9NwjWIMIet0NahjcLI
 G9Aizlt49U6GwvL02tGeVgs4Ls5OR8fihViij64ldaAhF5XUAM5T7tQbl5GgH5l3TxQ7jfqoU
 oiTVab0A1OzWezNg4XZrcMf7+4yeTN7LsHCwyehHS3ww4zekphdRUcvCXwAisEvfa1i6OQyfz
 80HC97nHG4Xh4ooh7lNvMvRYKDeoPuRbiby6vsMGGakhXiMnBcnNPd6d2ecrSSWADbMuKTUcC
 RRz7tQw+nZwDyyDvrt0TO/6ONDEiVmhF3v46Ehd7tTMJM/1nUBfcnOLUWyG1hq9vRC68Ne4Mo
 OM5Dck0eClP0kkl5JczZykLo6kxjYQGE1mRALY5v0i+2jb5SGcBo5QyS0EmfoB4mla1xMXZhP
 fDfQ+IZB1b/ukTKw1VOzzLlE6/pCW51iZaDCBQRbTBwsvF53dAoOYBkHBmYtuHpgdQ72W3zbr
 7VgAqvLAn4r+eehlAQfv87+BqJQ1hWvvGlIcBsF2GeCUyyqAWwl8c3XnyKjhCp5Rr6ajVYLuA
 81refT6rqxyyfXnZtO5xkF7icqC6l2OVyt7Wu0EUQsQGe3tZWX1My67gIv4EF0UcOGauCb7E9
 w3Rv6Jm1UPC219K9EXaznesBBowSaa1IyvMY9k4odEBgPT7FbLuLRzd3CYXH/YCb+BCPWpdOv
 N6cMcHGyPVtXxwLyIJ6bwoAKbCdBhs/Klkkj81SpyKxxrMVIuVe72iTANLIle0OXuguOAatj/
 MX8GjUTdI4xZu6mIZ9luJRzayjVDcDFnVfIdSyvAkmcRx8CasJO4AfMf+7JbqylQc729ePdbD
 63jsvnRPtlk1iVPaJogGLFS44XlQeX82ZvhfnpUYi5MoUNubqylru9SzEi0OUqzVNvddlw2YL
 cax3k+Fl/ImsqrwsaxE1KaCAxP2af8jfCq6k12UlJjR/WIzWDhsu9z7wRniGMl3Dh+tEyBD0w
 m//r+0NW+CB6i01QVwkS/cvki13aVbsDtKiwYSwlLZOlw2uHEK1Qk3jQQ6aDjcBjw9qmzGhbA
 9dI3HWamH6zaZf69xxaRT+PDNSiL7SzfcS+ACW7A176WC5DA+IEseUNlj2zcP41ucHfoVNss3
 +lOJENqsqbV7OS8G2WcNhr+LK+5V4FQh1uvZiMzgfW3dZd3X2YmP7fq9FgZNJL934OFmz0/vn
 XDcOshFa+Fa2Y8raE
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
 Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 25, 2020 at 09:19:24AM +0000, Quentin Deslandes wrote:
> On 03/24/20 16:18:30, Dan Carpenter wrote:
> > That's a bit over engineering something which is pretty trivial.
> > Normally, we would just make the size a define instead of a magic number
> > 14.
>
> My bad, I meant "define", not "macro".
>
> > If people change the size in the future (unlikely) and it causes a bug
> > then they kind of deserve it because they need to ensure all the new
> > stuff is initialized, right?  If they change it and it results in a
> > buffer overflow then static checkers would complain.  If they changed it
> > and it resulted in uninitialized data being used then it would be zero
> > so that's okay.
>
> I wasn't sure where I should stand on this, that's clearer now.
>
> Thanks,
> Quentin

Dan and Quentin, thanks for your time to review my work, and make comments.

oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
