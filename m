Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0590819AEC0
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Apr 2020 17:32:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B0A5E86DC2;
	Wed,  1 Apr 2020 15:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CNc4UL6_qpHy; Wed,  1 Apr 2020 15:32:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAED986D24;
	Wed,  1 Apr 2020 15:32:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D6DB01BF57C
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 15:32:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CF47B87E9D
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 15:32:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zeG+hkixOwqK for <devel@linuxdriverproject.org>;
 Wed,  1 Apr 2020 15:32:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8599D87EA6
 for <devel@driverdev.osuosl.org>; Wed,  1 Apr 2020 15:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585755124;
 bh=/dW7R5/Qb5AEDqizI8Yf/pT8P60Ty7i0Nhyu77O5eUA=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=iOUgWYuL0wo1euHHQ+Xfhija6WsqZNQtIZPOxdt/msHrQ/ObDcd7A9PTIEs7C4Ytj
 pt2cJFBrfL5gQq6ivNcdSWCIMO8o12v2h+yTrUeYmNfl+S0ADsnStYs/QRaUsUGMbz
 nbld7NsqBgF+wT254fyhHbre5hv6RhT9lsja+wUY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1N95iR-1jEs3o3zXT-016C1x; Wed, 01
 Apr 2020 17:32:04 +0200
Date: Wed, 1 Apr 2020 17:31:47 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: vt6656: Use BIT() macro in vnt_mac_reg_bits_*
 functions
Message-ID: <20200401153146.GA3109@ubuntu>
References: <20200320181326.12156-1-oscar.carter@gmx.com>
 <20200323073214.GJ4650@kadam> <20200326171043.GB3629@ubuntu>
 <20200331104130.GC2066@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331104130.GC2066@kadam>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:2rP4ynpvAFbcqu0r+As38eHxSyzuEzadh73yrM2SaR8Dv55tzV7
 CkEMHdiBOqbzhy4nct5zQO1M1wsBTYsd4TCMjdH9iu4R42NIBvPhSszj4PWH7tmvjqArvM4
 pZLcHR1ui6ARs9a7aw2oh9GrRsvT3/586gdG/DEEtvvhjAzPzY6UGslD7Eunrfqwxx1q6lK
 QGvi1v7lrL6wIRYdDrlSA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:r41UaLderfs=:CJvqgoQn0JJ4cZcoqmf+vR
 g48c5XWaS4GzuqSXs/uLvb6nEDssNNMLqcm7WpFrIp9AjLJ/VyQ5pZn/BZHjTMN/BsF/KvSlE
 0YDgv+ETfVM0D3dlV0tea0g0+5msYhty+fpjUMT4IVMDUVj45iz5txrG1uPRzg3Jvr87mNIxy
 x3oVkKITsvuYNzaH9yYTW7k/FvyWCPQz3fDiBAupoIxAKzo4zDsVKDYC5jwypa91UtOOlkzS1
 VwR6bmB7Gx7tW2HsbPpQcguxJxsmc+keAAb46FvEBSv64jKfdFBN8tiXQO43VLQyrZfQnjGK2
 J89Mw4IKaNOgaayr1QUk/KvJ+eWAq2I/1wpPCVIRi2xHXAYjS894PqglThnuf9AmxIkBn9KY4
 oEPfZlOU+dZCWhgVbez0ZFbY0bUuBvz+GV0Fpl+sTPM4VS9opbGx/TZoG0FtcA5oh9T1cctYu
 vVLldmZxHzK7lXwGQtGer5QqdY0aVEmvJA0ZgyMXzX291ZApTqDhEWbidO1rrHGhpDplwPAEi
 7+luORbBYQpYuN+++AcMbZ6IvmQ4E2i2yQjkJQa1v0gI8NkJocePAST5GwVeEda0x9+n4wZsR
 QYybvV02VlFIGaYcjbVc78oVs0fPMkODD6xZ4jcpEhyjb+XqNqVcSypeM92PLr0tiyp+osy/R
 GCgYyn/+9VfCBivC9gsVjxazpwnDwjejXUxMtPaPEeJiZW4qKao8CivkZPnMuQm36mH2JN85v
 c7tTtPnxFdFxMhquE9vpeFmRCQbqs8363H8G6rhw0CUGZ+OJqpah6mPZfooCH2z6P/S/HfYhS
 ZbgYiA3yrb2usA3f2AohvO0Qto81DvwhZCksox6e9qN60jd8CftLkEmXRnAARSeb2oy8UMsgH
 i0QTfAqQ7RV4ZF77SUmKgErBB71mQ9iPg2d9zOUuRSPugXTB2F+knyOGMvp5HB55dKpZLfpeN
 zRsOg4ouNAPwnDPE+G/wd9mh9vYq0HwEfDJHi1q3/yGd6423snBuq+uuqCSwoClEb76NtbM2m
 Neouly8fQ4z3cYHt4Fmp9eMACcdhcQfFNy0MJA+pJNPWU7p2MSmfskvy0keUqkSbD+PE1arnr
 IKl666GTWiWFyIp43snEC+9bv+O245g54MbxsU1spoSHYsOinAuO3XkIfN/vBIMcIgycZxtfL
 mev0B6uRafMv28yeXY9+LJI0oPW3pv6M96tOQrhngFeFsV4oFWaFvjGpsdR9gJWtn+JsD9FLu
 TU2knxE8HwqLUdgU4
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

On Tue, Mar 31, 2020 at 01:41:30PM +0300, Dan Carpenter wrote:
> On Thu, Mar 26, 2020 at 06:10:43PM +0100, Oscar Carter wrote:
> > I will make these changes and i will send and incremental patch with the
> > "Fixes:" tag due to the this patch has already been added to the staging-next
> > branch of the greg staging tree.
>
> Fixes is only for bug fixes, not style issues.
>
Ok, thanks for the explanation.

> regards,
> dan carpenter
>
regards,
oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
