Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CA06CD8A7
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Mar 2023 13:43:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6F0941DFA;
	Wed, 29 Mar 2023 11:43:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6F0941DFA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fh7z4n73_UXq; Wed, 29 Mar 2023 11:43:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9ACE741B43;
	Wed, 29 Mar 2023 11:43:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9ACE741B43
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A47831BF301
 for <devel@linuxdriverproject.org>; Wed, 29 Mar 2023 11:42:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7DC0941CE3
 for <devel@linuxdriverproject.org>; Wed, 29 Mar 2023 11:42:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DC0941CE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YGzSVg3QsS_A for <devel@linuxdriverproject.org>;
 Wed, 29 Mar 2023 11:42:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABF6C400D7
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ABF6C400D7
 for <devel@driverdev.osuosl.org>; Wed, 29 Mar 2023 11:42:58 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A081061CC1;
 Wed, 29 Mar 2023 11:42:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2946C433EF;
 Wed, 29 Mar 2023 11:42:56 +0000 (UTC)
Date: Wed, 29 Mar 2023 13:42:54 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kloudifold <cloudifold.3125@gmail.com>
Subject: Re: [PATCH v6] staging: sm750: Rename sm750_hw_cursor_* functions to
 snake_case
Message-ID: <ZCQkPr6t8IOvF6bk@kroah.com>
References: <ZCQeyWW3+d7+qT+b@CloudiRingWorld>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZCQeyWW3+d7+qT+b@CloudiRingWorld>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1680090177;
 bh=AYjLBzvCIli3/g87osWOfF8BceYv0fMCoWlwocskBR0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jy0p380j07xybOmELNTLvm2yJ7BUqFgyY3H82JSuXNR0dP5GF/dXeC90AXR3SLIxt
 tVUe48iTddMowdhAMq4mh4E1QWLJ9ltSxJDNb82Jsrjf6vL2rDWthTu+nqgtyGu0Es
 FhD9OZJZ0gJVrJTLpQkM5ExYtN/q4lxdb1tZz/T4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=jy0p380j
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 Teddy Wang <teddy.wang@siliconmotion.com>, outreachy@lists.linux.dev,
 alison.schofield@intel.com, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 29, 2023 at 07:27:04PM +0800, Kloudifold wrote:
> sm750 driver has sm750_hw_cursor_* functions, which are named in
> camelcase. Rename them to snake case to follow the function naming
> convention.
> 
> - sm750_hw_cursor_setSize  => sm750_hw_cursor_set_size
> - sm750_hw_cursor_setPos   => sm750_hw_cursor_set_pos
> - sm750_hw_cursor_setColor => sm750_hw_cursor_set_color
> - sm750_hw_cursor_setData  => sm750_hw_cursor_set_data
> - sm750_hw_cursor_setData2 => sm750_hw_cursor_set_data2
> 
> Reported-by: kernel test robot <lkp@intel.com>

The test robot did not report that the names were incorrect :(

> Link: https://lore.kernel.org/oe-kbuild-all/202303110849.X24WnHnM-lkp@intel.com/
> Signed-off-by: Kloudifold <cloudifold.3125@gmail.com>

Is that the name you use to sign documents?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
