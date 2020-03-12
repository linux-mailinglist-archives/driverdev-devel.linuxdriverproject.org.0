Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA48183CF7
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 00:02:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF30B86CF9;
	Thu, 12 Mar 2020 23:02:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bhT7t-ru2ncA; Thu, 12 Mar 2020 23:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E435486C2B;
	Thu, 12 Mar 2020 23:02:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B7531BF2FD
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 23:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 056DD85F71
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 23:02:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n-UQpkwOijFZ for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 23:02:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 887E086BA1
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 23:02:08 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7041206F1;
 Thu, 12 Mar 2020 23:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584054128;
 bh=GVBzrBuQMHJjq2RmxP/Sreon2ecMZtKVyxLQnNUlTcc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ht1M69RC5q3EYe/XgpTPiUkfVO5lAD/3PyRuUa16nwVC16XspQ0tkeLRmJPHjexdM
 iexiWS3ob47ZwcOavUFcGhpTaK/R4JEmc+l0Avoaiuyjm2M1GZ3kbqOpDn/tEs5DiA
 1L3+wDKIPuGCCm31rS8Tnq8wXISCt1L2apkWabQA=
Date: Fri, 13 Mar 2020 00:02:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Miguel <velocir@ptor.com.br>
Subject: Re: [PATCH] staging: exfat: fixed coding style warning
Message-ID: <20200312230206.GA625023@kroah.com>
References: <20200312220127.11-1-velocir@ptor.com.br>
 <20200312221115.GA615825@kroah.com>
 <89f540b1-5ca5-4e53-b48a-e03117a06507@www.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <89f540b1-5ca5-4e53-b48a-e03117a06507@www.fastmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Thu, Mar 12, 2020 at 07:50:08PM -0300, Miguel wrote:
> oh, sorry 
> 
> I had the file being modified on the second line in the commit. 

THe subject is still wrong :(

> Should I amend the commit message and send another email? or amend the commit message and send it on this same email thread? 

I can't take this patch as is, so you will have to do something in order
to have it in acceptable shape.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
