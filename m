Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25719320562
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 13:42:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD17D83C94
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 12:42:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XzLuXNK97OWJ for <lists+driverdev-devel@lfdr.de>;
	Sat, 20 Feb 2021 12:42:39 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id 2E795839D8; Sat, 20 Feb 2021 12:42:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 175C7839C0;
	Sat, 20 Feb 2021 12:42:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B34EA1BF2C6
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 12:42:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C0C56F48D
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 12:42:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1PM9IxkiP12T for <devel@linuxdriverproject.org>;
 Sat, 20 Feb 2021 12:42:12 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 050D96F4FE; Sat, 20 Feb 2021 12:42:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EAE956F48D
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 12:42:10 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 985F664DFD;
 Sat, 20 Feb 2021 12:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613824930;
 bh=cSr82vkt7W3FnlpG2Kubk27WIB9eM/IHLTJFPNiD3Yc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NQUxIbibAxGzdANWcnx7kG+koBEC6olP76L/pkRy/HZuMDMnLVn1dWEF831BjvZ8N
 3gJ8Z6r4oNnemPUhNnIN4T1LukRDBi7zPPXbmtG5tMXohT63CMuRp+iVcmCcmrdFNH
 jqnaHfs6rYOPkf/nGkNr8ZpFlZKy+Wg8PyybdSLM=
Date: Sat, 20 Feb 2021 13:42:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: RajMAIN <sssraj.sssraj@gmail.com>
Subject: Re: [PATCH] staging: wimax: i2400m: add space before open parenthesis
Message-ID: <YDEDnilZFC2vBNjw@kroah.com>
References: <20210220104816.13263-1-sssraj.sssraj@gmail.com>
 <YDDuu6sRtSfWhnbY@kroah.com>
 <5dbde654-386b-2011-0020-729e41043f45@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5dbde654-386b-2011-0020-729e41043f45@gmail.com>
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
Cc: devel@driverdev.osuosl.org, sfr@canb.auug.org.au,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Feb 20, 2021 at 05:58:35PM +0530, RajMAIN wrote:
> 
> On 20-02-2021 16:42, Greg KH wrote:
> > On Sat, Feb 20, 2021 at 02:48:16AM -0800, Rajesh Kumbhakar wrote:
> > > netdev.c
> > Why is this here?
> 
> You mean that filename? I thought I should mention it. Should I remove it
> and resubmit?

Please read the section entitled "The canonical patch format" in the
kernel file, Documentation/SubmittingPatches for what is needed in order
to properly describe the change.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
