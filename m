Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A13CE41D1
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Oct 2019 04:49:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0E311875D1;
	Fri, 25 Oct 2019 02:49:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BDUbmP-g9oVe; Fri, 25 Oct 2019 02:49:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DEB7A876EB;
	Fri, 25 Oct 2019 02:49:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F8861BF387
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 02:48:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5CB2787691
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 02:48:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8yKbAd9k5yj1 for <devel@linuxdriverproject.org>;
 Fri, 25 Oct 2019 02:48:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DA528875D1
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 02:48:57 +0000 (UTC)
Received: from localhost (unknown [38.98.37.137])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C31121929;
 Fri, 25 Oct 2019 02:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571971737;
 bh=nLvmHTl9M+EjHvOkgVDNxdCekjne3edjHpCDMdQ+qIk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h2PYV4sArSzNuN8BzLdUsbts1x+CX7QREnpZ+96d2SyA//xSW4bRwlAxwkdpOCKqL
 BPd3aq7n2WonoV18ng/fMH9bhaLTArifhGlDo5auD7ohhsNWHel+F/1tJrnxMruYdd
 147pI4UgtStqwsesdtxbBOVhaL7wxRQC2/o3e8ig=
Date: Thu, 24 Oct 2019 22:45:08 -0400
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH 1/8] staging: exfat: Clean up namespace pollution, part 1
Message-ID: <20191025024508.GA344075@kroah.com>
References: <20191023052752.693689-1-Valdis.Kletnieks@vt.edu>
 <20191023052752.693689-2-Valdis.Kletnieks@vt.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023052752.693689-2-Valdis.Kletnieks@vt.edu>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 23, 2019 at 01:27:44AM -0400, Valdis Kletnieks wrote:
> Make as much as possible static.  We're over-exuberant here for the benefit
> of a following patch, as the compiler will flag now-unused static code

This adds a bunch of compiler warnings, which isn't ok.  Please fix this
up to be correct and not add build warnings, as it just hides real
issues.

I'll drop this series and wait for a new version with this fixed up.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
