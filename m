Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E71118BF7
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 16:05:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B4D8486B02;
	Tue, 10 Dec 2019 15:05:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id udGrQSINcfTf; Tue, 10 Dec 2019 15:05:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B97A9854EF;
	Tue, 10 Dec 2019 15:05:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A7221BF591
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 15:05:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5A7398772E
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 15:05:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id czTxTThYAo6w for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 15:05:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E055987678
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 15:05:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 412212077B;
 Tue, 10 Dec 2019 15:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575990316;
 bh=zjpR6mzgWEYNOC5i8S3s2v+cVWeb1veFQnXVvd7C9WM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mFfc1Kx35VXEu+JTgQ75InlIAmrK+nlpkkcfc/6INoMObL5h3hh+ViyC/IhtF5j3b
 pe3HUFSE/ziy2olbE9hD+VoTw5p+t2jUt5gXMCkrjiJ8JHiMbf0i50kxKixUecTW/O
 5BIelfRd9psVv3n5/6qb0sWcOcP3gorrqvbgskIw=
Date: Tue, 10 Dec 2019 16:05:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sven Leykauf <sven_leykauf1@web.de>
Subject: Re: [PATCH 2/3] staging: sm750fb: Fix Avoid CamelCase
Message-ID: <20191210150514.GA4052772@kroah.com>
References: <20191208132852.1557-1-sven_leykauf1@web.de>
 <20191208132852.1557-2-sven_leykauf1@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191208132852.1557-2-sven_leykauf1@web.de>
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
Cc: devel@driverdev.osuosl.org, Daniel Bauer <daniel.j.bauer@fau.de>,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Dec 08, 2019 at 02:28:59PM +0100, Sven Leykauf wrote:
> Change names of variables and functions into proper names,
> according to coding style.

Do one thing at a time here.  Like just the functions in a single file.
Or a single structure's fields.  As it is, this is impossible to review
and I think you got things a bit "odd" in places for some of these
renames but it's hard to tease out from the large patch.

Please break this up into smaller pieces and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
