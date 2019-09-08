Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA6FACFD3
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 18:46:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DD85C20492;
	Sun,  8 Sep 2019 16:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EfY7mMBuQC0u; Sun,  8 Sep 2019 16:45:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CEFC720469;
	Sun,  8 Sep 2019 16:45:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ECD1C1BF2BD
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 16:45:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E603E856B7
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 16:45:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gF5RCjCLW4ut for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 16:45:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6EE488569B
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 16:45:55 +0000 (UTC)
Received: from localhost (unknown [62.28.240.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C338221479;
 Sun,  8 Sep 2019 16:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567961155;
 bh=TLSx0eDVVIR9BUeNWztuRR5XMMb45dshPOmxd+txMxM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DUuEBmsIxz7gPIltGr0dKWkRGL8sQbJeLye44pKH2VyaYTozUwaU2hj89j4t85eqy
 orUE8bz3ZSvEGj4TK+uerA0IS6iwN5skalvteoeblB+iSPqf4R1h2CU0bfUVETvK0Q
 xWrFqypwXgivCnpSmny/qzefVHtJg6nejgvKW9G4=
Date: Sun, 8 Sep 2019 17:45:52 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Valentin Vidic <vvidic@valentin-vidic.from.hr>
Subject: Re: [PATCH v2 1/3] staging: exfat: drop duplicate date_time_t struct
Message-ID: <20190908164552.GD8362@kroah.com>
References: <20190908161015.26000-1-vvidic@valentin-vidic.from.hr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190908161015.26000-1-vvidic@valentin-vidic.from.hr>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 08, 2019 at 04:10:13PM +0000, Valentin Vidic wrote:
> Use timestamp_t for everything and cleanup duplicate code.

You dropped function parameters in here, which you did not describe in
this changelog text :(

Please only try to do "one logical thing" per patch to make it easier to
review and revert if something goes wrong :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
