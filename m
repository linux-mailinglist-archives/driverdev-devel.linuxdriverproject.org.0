Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A50263FE
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 14:47:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8DF2E861F9;
	Wed, 22 May 2019 12:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DVlyKeUs40WK; Wed, 22 May 2019 12:46:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D26185C2E;
	Wed, 22 May 2019 12:46:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB52C1BF4D8
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:46:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A84D93059A
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:46:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id onYZXk-gNsWK for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:46:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 5E9AF304CA
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 12:46:55 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD1E821773;
 Wed, 22 May 2019 12:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558529215;
 bh=4U9I/NIQVI//8jEbd8ZkohshHTF1sn59PS/Bq9njMLo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AudOvINVOGb4x2bKnHS0cL/0I2MQxsxZE0I1RGx+QCjXy8AgPOMX/H5z7/buVmllm
 YkOmvkLJwOYL39HC4UDzkQBw6bB/PlYXxH1eyMZePkHjE1Iz1vXav5ennBIQogRzQp
 nQqso7OYwuKP2oQP4DsBFyS/tZHic/LM81X+f4o8=
Date: Wed, 22 May 2019 14:46:52 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Geordan Neukum <gneukum1@gmail.com>
Subject: Re: [PATCH 3/6] staging: kpc2000: kpc_i2c: newline fixups to meet
 linux style guide
Message-ID: <20190522124652.GB22148@kroah.com>
References: <cover.1558526487.git.gneukum1@gmail.com>
 <1c1b8428a502e79f19af7bc2a98787ecc6a1ed5a.1558526487.git.gneukum1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1c1b8428a502e79f19af7bc2a98787ecc6a1ed5a.1558526487.git.gneukum1@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 22, 2019 at 12:13:59PM +0000, Geordan Neukum wrote:
> The linux coding style document states:
> 
>   1) That braces should not be used where a single single statement
>      will do. Therefore all instances of single block statements
>      wrapped in braces that do not meet the qualifications of any
>      of the exceptions to the rule should be fixed up.
> 
>   2) That the declaration of variables local to a given function
>      should be immediately followed by a blank newline. Therefore,
>      the single instance of this in kpc2000_i2c.c should be fixed
>      up.

This really should be 2 different patches, but given that this file is
so messy, I'll take it for now :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
