Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D96B25E761
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Sep 2020 14:02:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D7CB86451;
	Sat,  5 Sep 2020 12:02:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ugkOc9W7wdDE; Sat,  5 Sep 2020 12:02:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9138086A02;
	Sat,  5 Sep 2020 12:02:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 682491BF20B
 for <devel@linuxdriverproject.org>; Sat,  5 Sep 2020 12:02:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 62BE6868EA
 for <devel@linuxdriverproject.org>; Sat,  5 Sep 2020 12:02:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c5XJvzoHFpkE for <devel@linuxdriverproject.org>;
 Sat,  5 Sep 2020 12:02:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A3D22868E5
 for <devel@driverdev.osuosl.org>; Sat,  5 Sep 2020 12:02:13 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D8E3320757;
 Sat,  5 Sep 2020 12:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599307333;
 bh=Byd7lldqYKdhk0D4aP5ylXoKM5Ow4mbv4nJ33uiteZs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=chuIF9SbtPql5/5QxDbmfAOD9dcumoSjcy3NdT7h3/FN4zZgBYLKNavX70bOY5sTX
 JAXdCRHdO6/kbTfiNsPrXa437pRHICuLPPqZZGf2tW41HeZmAhrdKM6VxYa8r9qSdK
 5dIGoJ5nI3ZeMzHsp1hK6Prv4hhoFFnTBUPZLSag=
Date: Sat, 5 Sep 2020 08:02:11 -0400
From: Sasha Levin <sashal@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH AUTOSEL 5.8 07/42] speakup: Fix wait_for_xmitr for ttyio
 case
Message-ID: <20200905120211.GH8670@sasha-vm>
References: <20200831152934.1023912-1-sashal@kernel.org>
 <20200831152934.1023912-7-sashal@kernel.org>
 <20200831153345.GA2525965@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200831153345.GA2525965@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Samuel Thibault <samuel.thibault@ens-lyon.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 31, 2020 at 05:33:45PM +0200, Greg Kroah-Hartman wrote:
>On Mon, Aug 31, 2020 at 11:28:59AM -0400, Sasha Levin wrote:
>> From: Samuel Thibault <samuel.thibault@ens-lyon.org>
>>
>> [ Upstream commit 2b86d9b8ec6efb86fc5ea44f2d49b1df17f699a1 ]
>>
>> This was missed while introducing the tty-based serial access.
>>
>> The only remaining use of wait_for_xmitr with tty-based access is in
>> spk_synth_is_alive_restart to check whether the synth can be restarted.
>> With tty-based this is up to the tty layer to cope with the buffering
>> etc. so we can just say yes.
>>
>> Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
>> Link: https://lore.kernel.org/r/20200804160637.x3iycau5izywbgzl@function
>> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>> ---
>>  drivers/staging/speakup/serialio.c  | 8 +++++---
>>  drivers/staging/speakup/spk_priv.h  | 1 -
>>  drivers/staging/speakup/spk_ttyio.c | 7 +++++++
>>  drivers/staging/speakup/spk_types.h | 1 +
>>  drivers/staging/speakup/synth.c     | 2 +-
>>  5 files changed, 14 insertions(+), 5 deletions(-)
>
>Not needed for 5.8 or older, sorry, this was a 5.9-rc1+ issue only.

Dropped, thanks!

-- 
Thanks,
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
