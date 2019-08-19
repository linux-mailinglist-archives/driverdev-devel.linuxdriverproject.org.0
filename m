Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A154091E3D
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Aug 2019 09:45:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A730685DF5;
	Mon, 19 Aug 2019 07:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WlmFSJhe6880; Mon, 19 Aug 2019 07:45:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7510F85B7C;
	Mon, 19 Aug 2019 07:45:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7192B1BF393
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 07:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6E7758797A
 for <devel@linuxdriverproject.org>; Mon, 19 Aug 2019 07:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U1htb6eZK4UH for <devel@linuxdriverproject.org>;
 Mon, 19 Aug 2019 07:45:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.skyhub.de (mail.skyhub.de [5.9.137.197])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1795087766
 for <devel@driverdev.osuosl.org>; Mon, 19 Aug 2019 07:45:32 +0000 (UTC)
Received: from zn.tnic (p200300EC2F04B700DD16340F367BA899.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f04:b700:dd16:340f:367b:a899])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id A116D1EC0B6E;
 Mon, 19 Aug 2019 09:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1566200729;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=0dkuKpXpNOV2CcoIwLeUmjN7fWrdSqx1Cdg+eS5av44=;
 b=DXoq3HNHEGcuz8L5ZvvJ4H0sxCrtY24lnJeXrwKWHwcSJ5j+y890QAxrh9QbHhkMbW9/qZ
 ay48PC1OsZae02KJhB3+BgzS3uGfP9l1kL3OGjfXyBFVKucuuit5Emq3lj0BjWS97Z0571
 sqrU9UTmfkjNSb+jqsJeGXD/baBfBu8=
Date: Mon, 19 Aug 2019 09:46:14 +0200
From: Borislav Petkov <bp@alien8.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [RFC PATCH 08/15] drivers/acrn: add VM memory management for
 ACRN char device
Message-ID: <20190819074614.GD4841@zn.tnic>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
 <1565922356-4488-9-git-send-email-yakui.zhao@intel.com>
 <20190816124757.GW1974@kadam>
 <8b909c22-3873-2b5d-4845-1fee1a5d81ce@intel.com>
 <20190819073958.GC4451@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819073958.GC4451@kadam>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, Li@osuosl.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, Jason Chen CJ <jason.cj.chen@intel.com>, "Zhao,
 Yakui" <yakui.zhao@intel.com>, Liu Shuo <shuo.a.liu@intel.com>,
 Fei <lei1.li@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 19, 2019 at 10:39:58AM +0300, Dan Carpenter wrote:
> On Mon, Aug 19, 2019 at 01:32:54PM +0800, Zhao, Yakui wrote:
> > In fact as this driver is mainly used for embedded IOT usage, it doesn't
> > handle the complex cleanup when such error is encountered. Instead the clean
> > up is handled in free_guest_vm.
> 
> A use after free here seems like a potential security problem.  Security
> matters for IoT...  :(

Yeah, the "S" in "IoT" stands for security.

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
