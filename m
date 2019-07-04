Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A229B5FB5B
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jul 2019 18:01:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3940522225;
	Thu,  4 Jul 2019 16:01:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v2VTOpWvMcMi; Thu,  4 Jul 2019 16:01:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 69DB322128;
	Thu,  4 Jul 2019 16:01:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7837B1BF3D5
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 16:01:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6E46084900
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 16:01:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Tb-js4jPET9 for <devel@linuxdriverproject.org>;
 Thu,  4 Jul 2019 16:01:10 +0000 (UTC)
X-Greylist: delayed 00:05:22 by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A8026863A6
 for <devel@driverdev.osuosl.org>; Thu,  4 Jul 2019 16:01:10 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9087918E2;
 Thu,  4 Jul 2019 11:55:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 04 Jul 2019 11:55:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=animalcreek.com;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=mesmtp; bh=mPnkcAZw82aZVs9Z9rG4+ggB
 DTzCBZWCGqYWdqaNVKo=; b=UoKXTf63vhblNFTYDD5ovIuLnfoPRIkcdpE3lDTX
 pp6uCs71cXKAbTBfaDi2DPqUrONtik3P0RQGNyx+i6k/alDjwtc3mWkBfObiRhfP
 wywdn4VSdZRg97zey6ECbueW+PTxpFTMVVptQiawFpUqe71zwstTuWP8iRNLhdiA
 Azg=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=mPnkcA
 Zw82aZVs9Z9rG4+ggBDTzCBZWCGqYWdqaNVKo=; b=dzUkP6Om+KPVTzCTzYlfku
 M7nWyC/cKVzyjsFPHkrAkHb76daPECLWsKjlgBcUiiCrWN4IpzK5VDSLV2E7rXxw
 tCQqoLkTeMxH2fvKcWE0aDtY7OlJ4Dd5CVuY7Om+YbvRd2842eSQdntgNA8XwmBk
 l+WQj4QM2/4YGZqp9jaYbCzGpAKhS2TN6Vo2j83QgdQziuPY+nVfZ2Bn+zje8c/d
 aqZMPfO3hLC6/koOm0mjgJpBAo61rLVoZhQ4mYYxCzq5+u4l2chGe82Vr8/fetoe
 nv3IPtOZvGYP5zbiLC5ZSSTJG8IXJxnPUyVcNzKM0DGawGmrRdWE2er5U+SxuiQg
 ==
X-ME-Sender: <xms:gSEeXeSJZ13ZJDRYm6sQZAmbjTgoTtqJTRKVt5mo6hOYiNK66RhmlQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrfedvgdeljecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujghofgesthdtredttdervdenucfhrhhomhepofgrrhhk
 ucfirhgvvghruceomhhgrhgvvghrsegrnhhimhgrlhgtrhgvvghkrdgtohhmqeenucfkph
 epieekrddvrdekjedrleehnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmghhrvggvrhes
 rghnihhmrghltghrvggvkhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:gSEeXYCDTULzTwvjWIlqxBWrN2IdBStYQ-OePsOXybw_vFKaNM4x8Q>
 <xmx:gSEeXW3q0NqpSkm9RprpJqyoSOOrVIsEJeAlPTgtZjvzlUrWaRJUQw>
 <xmx:gSEeXeXHDI-EbjNhcop2oajjHqtaPOKdY4s2m9TcbOPA57ojRzoUJw>
 <xmx:giEeXe7g1ZXBuiE6DWNZzHP8LMlFf7jRSL0UpaHDETllnufFqKrrXQ>
Received: from blue.animalcreek.com (ip68-2-87-95.ph.ph.cox.net [68.2.87.95])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6D81D380088;
 Thu,  4 Jul 2019 11:55:45 -0400 (EDT)
Received: by blue.animalcreek.com (Postfix, from userid 1000)
 id 56FC1A22246; Thu,  4 Jul 2019 08:55:42 -0700 (MST)
Date: Thu, 4 Jul 2019 08:55:42 -0700
From: Mark Greer <mgreer@animalcreek.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] staging: greybus: remove redundant assignment to
 variable is_empty
Message-ID: <20190704155542.GA28490@animalcreek.com>
References: <20190704133031.28809-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704133031.28809-1-colin.king@canonical.com>
Organization: Animal Creek Technologies, Inc.
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>, greybus-dev@lists.linaro.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 04, 2019 at 02:30:31PM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The variable is_empty is being initialized with a value that is never
> read and it is being updated later with a new value. The
> initialization is redundant and can be removed.
> 
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/staging/greybus/audio_manager.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/audio_manager.c b/drivers/staging/greybus/audio_manager.c
> index c2a4af4c1d06..9b19ea9d3fa1 100644
> --- a/drivers/staging/greybus/audio_manager.c
> +++ b/drivers/staging/greybus/audio_manager.c
> @@ -86,7 +86,7 @@ EXPORT_SYMBOL_GPL(gb_audio_manager_remove);
>  void gb_audio_manager_remove_all(void)
>  {
>  	struct gb_audio_manager_module *module, *next;
> -	int is_empty = 1;
> +	int is_empty;
>  
>  	down_write(&modules_rwsem);

Reviewed-by: Mark Greer <mgreer@animalcreek.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
