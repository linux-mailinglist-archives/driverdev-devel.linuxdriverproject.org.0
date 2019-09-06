Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55817ABD8C
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Sep 2019 18:19:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5544E881F9;
	Fri,  6 Sep 2019 16:19:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fLDCnbvTx4zr; Fri,  6 Sep 2019 16:19:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA72888058;
	Fri,  6 Sep 2019 16:19:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ABFC31BF325
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 16:19:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A5B8984702
 for <devel@linuxdriverproject.org>; Fri,  6 Sep 2019 16:19:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8LuJ3ACLCpHo for <devel@linuxdriverproject.org>;
 Fri,  6 Sep 2019 16:19:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3818584770
 for <devel@driverdev.osuosl.org>; Fri,  6 Sep 2019 16:19:01 +0000 (UTC)
Received: from localhost (unknown [89.248.140.12])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C2EB206CD;
 Fri,  6 Sep 2019 16:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567786741;
 bh=9JR/0RztC02zpm+rMuDn4vuBR9pFtNIfq7WpGGMOOk8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Qv7QxCLK0akzGp/aWJtCSApckxdhXoDkU3zjElZjYbChWOO/P0UEMvjqq5TVqHKLx
 r8uorRp2vKP67C3cQ6rffnowSq8geny5GgzA8w0gnzlzaJ4XDsbIq7Mo6DvLXMI/rv
 tBeg+CB+3Hv3hcgSB0AZgynFArCm9CBVW1vEAV+Y=
Date: Fri, 6 Sep 2019 18:18:57 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 1/2] exfat stopusing CONFIG_FAT_DEFAULT_IOCHARSET
Message-ID: <20190906161857.GA2585@kroah.com>
References: <20190906150917.1025250-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906150917.1025250-1-arnd@arndb.de>
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
Cc: devel@driverdev.osuosl.org, Valentin Vidic <vvidic@valentin-vidic.from.hr>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>, linux-kernel@vger.kernel.org,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 06, 2019 at 05:09:04PM +0200, Arnd Bergmann wrote:
> When CONFIG_VFAT_FS is disabled, the reference to CONFIG_FAT_DEFAULT_IOCHARSET
> causes a link failure:
> 
> drivers/staging/exfat/exfat_super.c:46:41: error: use of undeclared identifier 'CONFIG_FAT_DEFAULT_IOCHARSET'
> static char exfat_default_iocharset[] = CONFIG_FAT_DEFAULT_IOCHARSET;
> 
> I could not figure out why the correct code is commented
> out, but using that fixes the problem.

For some reason I was getting a build error without that, I added those
commented out lines.  Odd.  Oh well, thanks for fixing this :)

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
