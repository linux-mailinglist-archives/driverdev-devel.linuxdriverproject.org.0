Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B432E178AD6
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Mar 2020 07:49:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3372D87829;
	Wed,  4 Mar 2020 06:49:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uY97OtU6FAOY; Wed,  4 Mar 2020 06:49:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 674D0873DC;
	Wed,  4 Mar 2020 06:49:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 310521BF85D
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 06:49:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2CC8184DB8
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 06:49:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GhYNrQ4ueEnr for <devel@linuxdriverproject.org>;
 Wed,  4 Mar 2020 06:49:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9544484D9F
 for <devel@driverdev.osuosl.org>; Wed,  4 Mar 2020 06:49:45 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBE3E2146E;
 Wed,  4 Mar 2020 06:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583304585;
 bh=VK53u2VxkYUENGgHTPFGpT3Z/fpLjjPmXcKQ3gcUtws=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V+kwW6KvpMnnUi3CM3rOFD+6kThqvnEFjb1p+czVRydBv93/KSXzGe2IYFoW676Fv
 pH2x4cytTMjT9gRUPVeCMQ+P04yFBpP+CZWgtITnnRIko9PnsJXb6Tw5ZE2IyElK15
 1/ziS9d0t+rBiXatxi4PMTLBHTJDG2uW3BZ39/MI=
Date: Wed, 4 Mar 2020 07:49:43 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: [PATCH v4] staging: qlge: emit debug and dump at same level
Message-ID: <20200304064943.GA1232764@kroah.com>
References: <20200224082448.GA6826@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224082448.GA6826@kaaira-HP-Pavilion-Notebook>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 24, 2020 at 01:54:48PM +0530, Kaaira Gupta wrote:
> Simplify code in ql_mpi_core_to_log() by calling print_hex_dump()
> instead of existing functions so that the debug and dump are
> emitted at the same KERN_<LEVEL>
> 
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
> 
> changes since v1: make code of ql_mpi_core_to_log() simpler.
> changes since v2: directly call the function instead of defining a
> macro.
> changes since v3: Remove prefix string.
> 
> ----
> ---
>  drivers/staging/qlge/qlge_dbg.c | 23 +++--------------------
>  1 file changed, 3 insertions(+), 20 deletions(-)

Does not apply to my tree :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
