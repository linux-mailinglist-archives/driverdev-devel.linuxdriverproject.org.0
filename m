Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D958E4AA07
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 20:37:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91E358654D;
	Tue, 18 Jun 2019 18:37:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OsXcWiZgzOzN; Tue, 18 Jun 2019 18:37:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A294864F3;
	Tue, 18 Jun 2019 18:37:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D26CF1BF327
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 18:37:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CF47685644
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 18:37:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1cNOFMrUONo5 for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 18:37:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sipsolutions.net (s3.sipsolutions.net [144.76.43.62])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 477A885633
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 18:37:41 +0000 (UTC)
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hdIz3-0004YC-56; Tue, 18 Jun 2019 20:37:29 +0200
Message-ID: <e5b8756590260b4d6a26cf9f02deb9d157cfca83.camel@sipsolutions.net>
Subject: Re: [PATCH v2 1/4] staging: media: tegra-vde: Remove BIT() macro
 from UAPI header
From: Johannes Berg <johannes@sipsolutions.net>
To: Joe Perches <joe@perches.com>, Dmitry Osipenko <digetx@gmail.com>, 
 Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter
 <jonathanh@nvidia.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Hans
 Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Date: Tue, 18 Jun 2019 20:37:23 +0200
In-Reply-To: <26cd63896d6930385b4f770e305f0782a455a688.camel@perches.com>
References: <20190618161458.20499-1-digetx@gmail.com>
 <20190618161458.20499-5-digetx@gmail.com>
 <26cd63896d6930385b4f770e305f0782a455a688.camel@perches.com>
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Song Liu <songliubraving@fb.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jiri Pirko <jiri@resnulli.us>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, Jamal Hadi Salim <jhs@mojatatu.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Cong Wang <xiyou.wangcong@gmail.com>, linux-tegra@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, Mark Rutland <mark.rutland@arm.com>,
 Martin KaFai Lau <kafai@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2019-06-18 at 11:23 -0700, Joe Perches wrote:
> 
> include/uapi/linux/nl80211.h: * bitmask of BIT(NL80211_BAND_*) as described in %enum
> 
> 
That's a comment :P

johannes

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
