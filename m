Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D812C3544
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Nov 2020 01:14:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B6FD286978;
	Wed, 25 Nov 2020 00:14:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ws8HDadq9R13; Wed, 25 Nov 2020 00:14:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6276486966;
	Wed, 25 Nov 2020 00:14:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A8E601BF3DA
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 00:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A39F2234BB
 for <devel@linuxdriverproject.org>; Wed, 25 Nov 2020 00:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WuDTX03QYApZ for <devel@linuxdriverproject.org>;
 Wed, 25 Nov 2020 00:14:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 53CEB234AA
 for <devel@driverdev.osuosl.org>; Wed, 25 Nov 2020 00:14:43 +0000 (UTC)
Received: from kernel.org (unknown [104.132.1.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBB86206E5;
 Wed, 25 Nov 2020 00:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606263283;
 bh=yiZ84YEeFL0wWYezky6vF3yhpPWjHZ52uDhLhbMfJQM=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=eLU5QbBunDunzGLbn35O61lp48dnCiQcXoMj6ntVLrpCl3D2hSb7EzYMD9E7xCufo
 faLinbGoGYFCtqY3HR9mXHNu5faGJskKKN4nMkiF9Z0YrPcdbgRghR/v20re2SmSD7
 rf5xyq57yHsYQeoFrG1CdVXncecGIlRjpGaTHnF4=
MIME-Version: 1.0
In-Reply-To: <20201115170950.304460-4-krzk@kernel.org>
References: <20201115170950.304460-1-krzk@kernel.org>
 <20201115170950.304460-4-krzk@kernel.org>
Subject: Re: [RFC 3/3] media: atomisp: do not select COMMON_CLK to fix builds
From: Stephen Boyd <sboyd@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jaroslav Kysela <perex@perex.cz>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Krzysztof Kozlowski <krzk@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Takashi Iwai <tiwai@suse.com>,
 alsa-devel@alsa-project.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Date: Tue, 24 Nov 2020 16:14:41 -0800
Message-ID: <160626328163.2717324.18098835445527872342@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Krzysztof Kozlowski (2020-11-15 09:09:50)
> COMMON_CLK is a user-selectable option with its own dependencies.  The
> most important dependency is !HAVE_LEGACY_CLK.  User-selectable drivers
> should not select COMMON_CLK because they will create a dependency cycle
> and build failures.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

This is fallout from making the COMMON_CLK symbol selectable in commit
bbd7ffdbef68 ("clk: Allow the common clk framework to be selectable").
Before then we needed drivers to select the COMMON_CLK config so that
the framework was enabled. Now that isn't necessary and any
user-selectable options should be moved to depends syntax.

Reviewed-by: Stephen Boyd <sboyd@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
