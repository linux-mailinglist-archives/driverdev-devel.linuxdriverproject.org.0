Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA97FE5E5A
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 20:04:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 224CF87524;
	Sat, 26 Oct 2019 18:04:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4XqHFF+I-Iug; Sat, 26 Oct 2019 18:04:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6AEAE873B6;
	Sat, 26 Oct 2019 18:04:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E6E8D1BF44A
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 18:04:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E221B853C3
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 18:04:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W0hWCCIYQisH for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 18:04:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8148A8539A
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 18:04:23 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B10620663;
 Sat, 26 Oct 2019 18:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572113063;
 bh=RnQ7KzIlXLB02GaqoOUCoQODZ8K4G9ZrO4l3ZJNA05o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tRDglpKhmshWqpZUFWyHziNgFaIvO7xlfyYjjTdLwINaKQW5oATwyC2hbVoN1lEky
 yH5+ZknWGF+sVk9JVlNRwINVoB2HV47KHIa4eQqNm99b9l//9X7c7vxgjQxWbIh1u1
 K4UhTFKPrcQ2jg+nO9aFHLUxFi03lSWpdd32+nFQ=
Date: Sat, 26 Oct 2019 20:04:21 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Subject: Re: [RESEND PATCH 1/2] staging: rtl8712: Fix Alignment of open
 parenthesis
Message-ID: <20191026180421.GB645771@kroah.com>
References: <cover.1572051351.git.cristianenavescardoso09@gmail.com>
 <e3842148b6dd01c47678f517a07772c75046c50f.1572051351.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e3842148b6dd01c47678f517a07772c75046c50f.1572051351.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Larry Finger <Larry.Finger@lwfinger.net>, linux-kernel@vger.kernel.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 25, 2019 at 10:09:38PM -0300, Cristiane Naves wrote:
> Fix alignment should match open parenthesis.Issue found by checkpatch.

Space after a '.' between sentences, right?


thanks

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
