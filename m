Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD1C4AD98
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 00:02:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D455885B25;
	Tue, 18 Jun 2019 22:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rgPnL2_DFfCv; Tue, 18 Jun 2019 22:02:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0176D8594B;
	Tue, 18 Jun 2019 22:02:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B00271BF33E
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 22:01:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A9C8E86597
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 22:01:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A93F3Y-epL9q for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 22:01:55 +0000 (UTC)
X-Greylist: delayed 03:00:00 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0169.hostedemail.com
 [216.40.44.169])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B5B6B8653F
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 22:01:55 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave01.hostedemail.com (Postfix) with ESMTP id 597C5180013C4
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 18:23:23 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 6E24F18020016;
 Tue, 18 Jun 2019 18:23:20 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::::::::::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3280:3353:3622:3865:3866:3867:3868:3870:3871:3872:3874:4250:4321:4605:5007:6742:6743:7514:8526:8784:9121:10004:10400:10848:11026:11232:11233:11473:11657:11658:11914:12043:12048:12296:12438:12555:12740:12760:12895:13161:13229:13255:13439:14096:14097:14181:14659:14721:14819:21080:21451:21627:30054:30083:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: soda34_1c6b15c9e8444
X-Filterd-Recvd-Size: 3982
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf12.hostedemail.com (Postfix) with ESMTPA;
 Tue, 18 Jun 2019 18:23:15 +0000 (UTC)
Message-ID: <26cd63896d6930385b4f770e305f0782a455a688.camel@perches.com>
Subject: Re: [PATCH v2 1/4] staging: media: tegra-vde: Remove BIT() macro
 from UAPI header
From: Joe Perches <joe@perches.com>
To: Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Rob Herring <robh+dt@kernel.org>
Date: Tue, 18 Jun 2019 11:23:13 -0700
In-Reply-To: <20190618161458.20499-5-digetx@gmail.com>
References: <20190618161458.20499-1-digetx@gmail.com>
 <20190618161458.20499-5-digetx@gmail.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Alexei Starovoitov <ast@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>,
 devel@driverdev.osuosl.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>, Yonghong Song <yhs@fb.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Jiri Pirko <jiri@resnulli.us>, Alexandre Torgue <alexandre.torgue@st.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-tegra@vger.kernel.org,
 Cong Wang <xiyou.wangcong@gmail.com>, linux-kernel@vger.kernel.org,
 Martin KaFai Lau <kafai@fb.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2019-06-18 at 19:14 +0300, Dmitry Osipenko wrote:
> The BIT macro isn't available in userspace. Checkpatch complains about
> shifts being used instead of the macro and people are starting to send
> patches without realizing that it's a UAPI header file. Hence let's
> replace the BIT macro with a hex values to make everyone happy.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  drivers/staging/media/tegra-vde/uapi.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/tegra-vde/uapi.h b/drivers/staging/media/tegra-vde/uapi.h
> index a0dad1ed94ef..dd3e4a8c9f7e 100644
> --- a/drivers/staging/media/tegra-vde/uapi.h
> +++ b/drivers/staging/media/tegra-vde/uapi.h
> @@ -6,8 +6,8 @@
>  #include <linux/types.h>
>  #include <asm/ioctl.h>
>  
> -#define FLAG_B_FRAME		BIT(0)
> -#define FLAG_REFERENCE		BIT(1)
> +#define FLAG_B_FRAME		0x1
> +#define FLAG_REFERENCE		0x2
>  
>  struct tegra_vde_h264_frame {
>  	__s32 y_fd;

The BIT macro is already used quite a bit in uapi headers.
I imagine all those need fixup...

$ git grep -P '\bBIT\s*\(' include/uapi
include/uapi/linux/bpf.h:#define BPF_FIB_LOOKUP_DIRECT  BIT(0)
include/uapi/linux/bpf.h:#define BPF_FIB_LOOKUP_OUTPUT  BIT(1)
include/uapi/linux/coresight-stm.h:#define STM_FLAG_TIMESTAMPED   BIT(3)
include/uapi/linux/coresight-stm.h:#define STM_FLAG_GUARANTEED    BIT(7)
include/uapi/linux/nl80211.h: * bitmask of BIT(NL80211_BAND_*) as described in %enum
include/uapi/linux/pkt_sched.h:#define TC_ETF_DEADLINE_MODE_ON  BIT(0)
include/uapi/linux/pkt_sched.h:#define TC_ETF_OFFLOAD_ON        BIT(1)
include/uapi/linux/psci.h:#define PSCI_1_0_OS_INITIATED                 BIT(0)
include/uapi/linux/serio.h:#define SERIO_TIMEOUT        BIT(0)
include/uapi/linux/serio.h:#define SERIO_PARITY BIT(1)
include/uapi/linux/serio.h:#define SERIO_FRAME  BIT(2)
include/uapi/linux/serio.h:#define SERIO_OOB_DATA       BIT(3)
include/uapi/linux/tc_act/tc_ctinfo.h:  CTINFO_MODE_DSCP        = BIT(0),
include/uapi/linux/tc_act/tc_ctinfo.h:  CTINFO_MODE_CPMARK      = BIT(1)


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
