Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 330C8320A67
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 14:06:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D288835D3
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 13:06:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fXbzl62Xx93r for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 13:06:42 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
	id C7D778375B; Sun, 21 Feb 2021 13:06:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B82683408;
	Sun, 21 Feb 2021 13:06:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF9151BF951
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:06:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AC8EF8458F
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 13:06:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0XTR_QRRekG6 for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 13:06:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2C69184432
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 13:06:14 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4C0F864E5F;
 Sun, 21 Feb 2021 13:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613912773;
 bh=XJ3AQNwDKIqBR42LqAlzdvpxb0rywbbMa+0xV7ULKj4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kTwjJ+QulLTgXsF3EGaoDkxI79RrK9s2rkk9QQ8xI13dM/broDrXAvfZ5Y5l9gG1O
 ziK4IbZ3+BmMYtq8XJ2ZgD26je/EL6kZPXINbIdbmKVOBI2iPWdMqvJtH1qctbjqwm
 x8jpTpP/LT5o9y9/mbDonebHG5xxRmjz38VELYlg=
Date: Sun, 21 Feb 2021 14:06:11 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Rajesh Kumbhakar <sssraj.sssraj@gmail.com>
Subject: Re: [PATCH v2] staging: wimax: i2400m: add space before open
 parenthesis
Message-ID: <YDJaw5p/VM2qhULU@kroah.com>
References: <20210220104816.13263-1-sssraj.sssraj@gmail.com>
 <20210220134652.16127-1-sssraj.sssraj@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210220134652.16127-1-sssraj.sssraj@gmail.com>
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

On Sat, Feb 20, 2021 at 05:46:52AM -0800, Rajesh Kumbhakar wrote:
> netdev.c
> 
> fixing style ERROR: space required before the open parenthesis '('
> 
> Signed-off-by: Rajesh Kumbhakar <sssraj.sssraj@gmail.com>
> ---
> Changes in v2:
> 	- Removed filename from commit message.

filename is still in commit message :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
