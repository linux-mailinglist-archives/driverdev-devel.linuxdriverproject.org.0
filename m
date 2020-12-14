Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D27A2D9946
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 14:55:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B97887549;
	Mon, 14 Dec 2020 13:55:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yXkOAHcqlASN; Mon, 14 Dec 2020 13:55:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 41D0D8753B;
	Mon, 14 Dec 2020 13:55:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 305EE1BF2FF
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 13:55:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2D9C984921
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 13:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8GK7xUPMY_1O for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 13:55:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CAFB2848ED
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 13:55:44 +0000 (UTC)
Date: Mon, 14 Dec 2020 14:56:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1607954144;
 bh=KoUkRaTRm8OzevwgD6ukwjI1VQVT0ST0XiqvYr+hzZU=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=iDzpd1WNErkCXv/XA44/VzLdrHA0H9Jytq2iHRauco1tPSzwz/luGvCpKu76cLAAn
 4basZYhXgk1mK4Sno9gBNJKCVcI66EYbIz4bN2is9hCT9EMTP/LTaV5+UnTmc2NXfN
 SIMBujbM2KgKe1arf7LsJQa7qMgLsUzq2B3BNUfA=
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: David Laight <David.Laight@aculab.com>
Subject: Re: [PATCH v2 09/12] media: atomisp: Fix PARENTHESIS_ALIGNMENT
Message-ID: <X9dvIVc5evB8cfEr@kroah.com>
References: <20201214110358.7102-10-Philipp.Gerlesberger@fau.de>
 <61d5f8315efc42238a5516b1dc496760@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <61d5f8315efc42238a5516b1dc496760@AcuMS.aculab.com>
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
 "linux-kernel@i4.cs.fau.de" <linux-kernel@i4.cs.fau.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ij72uhux@stud.informatik.uni-erlangen.de"
 <ij72uhux@stud.informatik.uni-erlangen.de>,
 'Philipp Gerlesberger' <Philipp.Gerlesberger@fau.de>,
 "sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 14, 2020 at 11:49:56AM +0000, David Laight wrote:
> From: Philipp Gerlesberger
> > Sent: 14 December 2020 11:04
> > 
> > You can sum up the two lines, because the maximum line length of
> > 100 columns is not exceeded.
> 
> IIRC the 80 column limit is preferred.

Not anymore, checkpatch has changed.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
