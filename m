Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9D21F51B
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 15:11:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A60FA86DCE;
	Wed, 15 May 2019 13:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p6XR+VuurXSd; Wed, 15 May 2019 13:11:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AAF1986DB2;
	Wed, 15 May 2019 13:11:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F8F01BF378
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 13:11:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7C5F2860CF
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 13:11:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9jA9GLVHZplR for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 13:11:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 251548462E
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 13:11:52 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7740D20843;
 Wed, 15 May 2019 13:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557925911;
 bh=caQcn1Fn2m88Hyhi07GdiivsHGhcDDiYkEB88acD1Ho=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wHKBbs9m4zFy11mqmlwxC35EHrepC8JytSqRoWuc2yRo0Lp+TO5mHRzm4VYqBd2Yq
 vw8klgPGbeOZdVcBGygFPe6gWPBjJsAac82/7OVzxeTpa96UcGRieNgBh7L27wL0mp
 PFcJYXVfOe8zcTFkF9gm9rTCyHHKbxJ9mqTQsjhI=
Date: Wed, 15 May 2019 15:11:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Puranjay Mohan <puranjay12@gmail.com>
Subject: Re: [PATCH v2 0/5] Fix checkpatch errors and warnings
Message-ID: <20190515131149.GA14173@kroah.com>
References: <20190514173023.31146-1-puranjay12@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514173023.31146-1-puranjay12@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, puranjaymohan@gmail.com,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 14, 2019 at 11:00:18PM +0530, Puranjay Mohan wrote:
> This series fix the following errors/warnings:
> 
> -Correct spelling mistakes.
> -Replace NULL comparison.
> -Add space around operators.
> -Remove braces from single if statement.

You should put the subsystem (staging) and driver name, in the 0/X email
as well.  Next time.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
