Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8BC296E15
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Oct 2020 13:58:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D511C8738B;
	Fri, 23 Oct 2020 11:58:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qnblkOvSNkAj; Fri, 23 Oct 2020 11:58:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DAB248723E;
	Fri, 23 Oct 2020 11:58:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C7401BF3B0
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 11:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3079A87865
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 11:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nswTzlm7JFgu for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 11:58:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8526787835
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 11:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=a43uQivSqcpgtBeNtkCDgWJNs/iVWYVhNy3CrkGeFSQ=; b=GKvx4ShSPC/2wFxB6AcKPueFi3
 lkzngVb6jyR4s7900S2bZt7bi5e3F1jIVLIP38fI5j446QCOwZtG6c+93yGj8Nq8V3e5+cf00K80T
 5uIpn+Iky0HoSN89QlGes0CZjm1Z5MY9TReQdbjq2zrErYJd8Jupa7wipQa9TCFFweDTXACPIsyQp
 SejhuoxGLUm6Z/FK9dEcPXnssu7Uxj/7B27ZuIjoXNbCrYD0hBpsg9fRnzt5JnvQlVXX2hKLDBK9/
 2BDvcC2jjoBASqH6sfp+G1Pp1V0ZCQo37QVy8/bJg1qPUCcPVWjg3QjVbq2y6jiks1ShyRuyc/t64
 PWsATsLA==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kVviG-0008OK-Dj; Fri, 23 Oct 2020 11:58:28 +0000
Date: Fri, 23 Oct 2020 12:58:28 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Elena Afanasova <eafanasova@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging/rtl8192e: replace kmalloc
 with kzalloc
Message-ID: <20201023115828.GZ20115@casper.infradead.org>
References: <20201023100317.4473-1-eafanasova@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023100317.4473-1-eafanasova@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 23, 2020 at 03:03:17AM -0700, Elena Afanasova wrote:
> -	txb = kmalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
> -		      gfp_mask);
> +	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);

This would be a good opportunity to use struct_size().

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
