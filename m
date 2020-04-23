Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CEB1B5AA2
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Apr 2020 13:40:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A673187E64;
	Thu, 23 Apr 2020 11:40:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xlTulEDY3y6D; Thu, 23 Apr 2020 11:40:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AECF087E32;
	Thu, 23 Apr 2020 11:40:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D7641BF3FE
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 11:40:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8A556868CB
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 11:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nWcRDkSEroZ3 for <devel@linuxdriverproject.org>;
 Thu, 23 Apr 2020 11:40:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1BBB686739
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 11:40:35 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 716EC2084D;
 Thu, 23 Apr 2020 11:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587642034;
 bh=v+cZbNEq+8xq9TdljfKBzmW0OSxSI3Wv8ELxe4MyXrs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sBJms3bpeviFauiUcUCQiOq4YvvYk8OFWsy6Mp3B3HOj2vHhfIUOdLNK6VE7XTw/v
 0ouOwtoiVcQZBwXoRq0gVUDPF5lCTPzp00Kx+NssOTIojVr14VSLr5B6qEeEIXo/Co
 PVQZ5gxk+pxMcaBUiQjn3KKxoZiOVne9eWvObe4I=
Date: Thu, 23 Apr 2020 13:40:32 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH v2 1/2] staging: vt6656: Check the return value of
 vnt_control_out_* calls
Message-ID: <20200423114032.GA3838948@kroah.com>
References: <20200419104821.6127-1-oscar.carter@gmx.com>
 <20200419104821.6127-2-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419104821.6127-2-oscar.carter@gmx.com>
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 "John B. Wyatt IV" <jbwyatt4@gmail.com>, linux-kernel@vger.kernel.org,
 Stefano Brivio <sbrivio@redhat.com>, Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Apr 19, 2020 at 12:48:20PM +0200, Oscar Carter wrote:
> Check the return value of vnt_control_out_* function calls. When
> necessary modify the function prototype to be able to return the new
> checked error code.
> 
> It's safe to modify all the function prototypes without fix the call
> because the only change is the return value from void to int. If before
> the call didn't check the return value, now neither.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>

This patch, and the 2/2 patch did not apply to my tree.  Can you please
rebase and resend?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
