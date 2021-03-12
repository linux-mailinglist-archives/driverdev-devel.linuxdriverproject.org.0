Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5F933932F
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 17:25:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C9C043061;
	Fri, 12 Mar 2021 16:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fW-w-Z5uIX6o; Fri, 12 Mar 2021 16:25:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E1084303F;
	Fri, 12 Mar 2021 16:25:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C635B1BF27F
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 16:25:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B56FF60632
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 16:25:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FHz6uhaZqgOV for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 16:25:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 175AA605DF
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 16:25:35 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 13FB56500B;
 Fri, 12 Mar 2021 16:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615566335;
 bh=kUniCaS0HjHCXNTuPIYttMkVeKo9Qgv2tC73cutHS+o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T5AB6Sr7oQclKZFzZNMJa5MzadMtol26xIHYoPWyevlqy1zG9PVmzD1NrF3Jaok7c
 DfHv2AqMiPN2nr6mJ7sDo7t1NnW8/k4/9SFvXM5Iq4icOOsdhq8GpYSdLErcsncsiT
 zDr5RnG4QtrKITZy2grQviI4JRHzYLaNCDu2igho=
Date: Fri, 12 Mar 2021 17:25:32 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Marco Cesati <marcocesati@gmail.com>
Subject: Re: [PATCHSET] remove 153 useless typedefs in staging/rtl8723bs
Message-ID: <YEuV/M7dEOz+7uyZ@kroah.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 12, 2021 at 09:26:05AM +0100, Marco Cesati wrote:
> This set of patches remove 153 useless typedef instructions in the
> staging/rtl8723bs source code, as identified by the checkpatch.pl
> script. Every patch is purely syntactical: it does not change the
> generated machine code. Furthermore, every single patch leaves the
> source code fully compilable, so that 'git bisect' will not be affected.

I'll take these, but can you now clean up the ALL_CAPS structure names
that this patch series creates?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
