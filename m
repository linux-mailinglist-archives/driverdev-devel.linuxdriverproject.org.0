Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0323D329F8C
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Mar 2021 13:54:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BF066F62E;
	Tue,  2 Mar 2021 12:54:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UwIErerRIy4K; Tue,  2 Mar 2021 12:54:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E4BA6F619;
	Tue,  2 Mar 2021 12:54:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B65961BF3DF
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 12:54:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E91843118
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 12:54:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NFgjKpw4s_bb for <devel@linuxdriverproject.org>;
 Tue,  2 Mar 2021 12:54:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2AE46430A5
 for <devel@driverdev.osuosl.org>; Tue,  2 Mar 2021 12:54:01 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E715B61494;
 Tue,  2 Mar 2021 12:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614689640;
 bh=73peVIMVRScHS0BOCRlqEB4HOD3Y8aQplI5JLB1L6Y8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=15KSP9ZRvrpTsCaDapZ2GjURJFqyIF6tEpP1jfcHoDuRYgvF3K3hlcepiCOf/oHhc
 Ap+nSvO/f4CGtcwkToXwU58QqAh2yKOpUaXIgh7Iz7dn2KlkNVMTVJ2VFnt6IZMxu/
 6l5VEt/WA7T+OV/UGgbVIypV0R8krc7VrVyqLrvU=
Date: Tue, 2 Mar 2021 13:53:57 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vikas Kumar Sharma <ks.vikas@globaledgesoft.com>
Subject: Re: [PATCH] This patch fixes the check-patch errors
Message-ID: <YD41ZR5tuXJsWfMo@kroah.com>
References: <20210302124254.GA2349431@vijayakumar>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210302124254.GA2349431@vijayakumar>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 02, 2021 at 06:12:54PM +0530, Vikas Kumar Sharma wrote:
> Disclaimer:This message is intended only for the designated recipient(s). 
> It may contain confidential or proprietary information and may be subject 
> to other confidentiality protections. If you are not a designated 
> recipient, you may not review, copy or distribute this message. Please 
> notify the sender by e-mail and delete this message. GlobalEdge does not 
> accept any liability for virus infected mails.

Email is now deleted, sorry, this does not belong on any emails sent to
public mailing lists for kernel development efforts.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
