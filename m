Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B424A7B31
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 08:08:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2654878C1;
	Wed,  4 Sep 2019 06:08:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LOY6ZWLyBlvr; Wed,  4 Sep 2019 06:08:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E40D875FE;
	Wed,  4 Sep 2019 06:08:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 620321BF3C8
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 06:08:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5C7C18784C
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 06:08:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dhhq2M+YuDms for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 06:08:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic314-21.consmr.mail.gq1.yahoo.com
 (sonic314-21.consmr.mail.gq1.yahoo.com [98.137.69.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 22232875FE
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 06:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1567577306; bh=hwLoSYhXaI9y1p2SeQMw4UaD3K63yJIgvZMxCenrJ/4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=A+pfb8eQm4peOZ7svJ0j1Qo9AmvbYV20x/99EhMVcJWBNW/Q8hV7yoEd9tYpUsYIOKfWuQU7QwEaYCoW7IZkMMIvs2LmeCLa3+LvbTwjOKMMP4ZoeXheYAuCmxTWC3czBSoQdNTrCdwvcPy8okkVdN1fnT7mI7YkPD6fqmSM9POAyhJWFj8pP/Mo6k1DO3atKjeILLdQy2xwBiyL8h3ew56xmTwFfPxAHDK8iq5EJCcUo0uV8wCWG1ZqudfIAISgsux7uTzL/vd9/TBu94qB1uP3CdiN5NDoh18JFKErKZIZ7b9iTBqXDSsELOTaL/admA43Skk0979h2JuvnHpuYg==
X-YMail-OSG: ORKeb9IVM1kThrZ67B2VWu5_tzJzSqCtP6NT4Tejriu6270Qli6JTkfLt5XExMJ
 npk9JAOimvEeGPR2FCYFreY7PiGc1PxTtW6xyatHYr5qiruzm.9A_2_H6KiC1gis_eUQDKbqH0k3
 ORmm7NKBxpzdVqh7kUKZP7Sq0t9K3M_gnQ4iTY3TINJqrvq339IAJIpcgHRAbtauNtPJuRyTjnP9
 EFoNMXNefNQ9rzM3OjkI0ZpwxWL8opZkTMhq1VHh9U5P2sq00Pb2meb20fb7qR4OZx4iN_4amsL_
 d_1csYetXVlmbwbsZTWjur_k4l2TXyt6iLmflbNED_yp6JNq_6CDmOxp7zPuPlvfGnOlbL0SfSVD
 S7W4rJKwjJ2_U2e0vLIDR7BIWm0htHYmthv3Qmf499XCEIutE8f.1WJzW3H4FN_RuXFs2NMdXWWA
 GQQpUceT4AEfv2mGqgecbLqFkCsrp7IRgwceGRmKUH0HRonOVQ5T6hegQHi1.zINqb7vTYPOj1io
 SaNCU4iAZVoA1W4xMHDa65uUbIsfkg8eJ2V.OnQ0zJngFbJcodvv0IEH7wBzkvgt40Y1v0y6Wu9r
 7N40AsqavL_R7ZvZQkG1Diqu8x8uTu3hSw7622eBqS2u9_6zR1.XuIqBSi8buagzaGu0YTzGGwNo
 _iyE2hisIjMCdCwVAvAukEuqvqkIrKNC5WTlRjXJaItnVkgx5nc83HHvhsUmGV45Q0u91t8YfgYF
 hkEg1QUlfWQcgkW7LVNGblczxvNxV4xkcvD.8RQP5gPmESgJVjQL3cwHJxeB4hPj9Mprv.x8aVl_
 ZrTUgm6iftZJZxM075AZflisSpli4zMh_J6ersi7xePxE_O7czwk9UtyNWCAPYSjaQORjiVPnC81
 M1Qn5wmSoefAyATLZdwGSQOhw_XT9nlC9r6TBowxw9hoqQebRWAk8HtwTX8M.lZCTkMfxcTwJD2F
 mVJ8TlwipCnPgBjnqLThG9lD.b40HrC8hRkLKBwferwSgfrDJrcFI4ESxW0DG23LdG9mr6xGJxon
 OQDeGw_nqgBsfoVxGUogx5NZlB_T0TA8ayaa6Q7eDyPDhIUnZXCojjHenOI4Pgsi8hD2b2bqIbP2
 AgkJzth1_lAjPOBI2y4RoGvlRm9dyPQDCOsjHeBO6L73nnKw3WY0DfbeAHEwW_846tzQQwyu64_s
 4HqMqAj8htnMeFUKHR04vyCBQXQSv16jQASMbhnN6uStUZDWPOZqsrGt8GWnu7LZ0p8AUgc6MjMy
 CCLQQPWQw.SfOu36XKpMafrAKavQarNNPLkMFS6iozfh.fiAj5BuKR3fDG.RrCevPzcyeaA--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.gq1.yahoo.com with HTTP; Wed, 4 Sep 2019 06:08:26 +0000
Received: by smtp411.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 3e160abbfe0b3ab899cbfee2cf1f96f3; 
 Wed, 04 Sep 2019 06:08:24 +0000 (UTC)
Date: Wed, 4 Sep 2019 14:08:18 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v2 00/25] erofs: patchset addressing Christoph's comments
Message-ID: <20190904060817.GA27072@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190901055130.30572-1-hsiangkao@aol.com>
 <20190904020912.63925-1-gaoxiang25@huawei.com>
 <20190904051655.GA10183@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904051655.GA10183@lst.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-erofs@lists.ozlabs.org, linux-fsdevel@vger.kernel.org,
 Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Christoph,

On Wed, Sep 04, 2019 at 07:16:55AM +0200, Christoph Hellwig wrote:
> On Wed, Sep 04, 2019 at 10:08:47AM +0800, Gao Xiang wrote:
> > Hi,
> > 
> > This patchset is based on the following patch by Pratik Shinde,
> > https://lore.kernel.org/linux-erofs/20190830095615.10995-1-pratikshinde320@gmail.com/
> > 
> > All patches addressing Christoph's comments on v6, which are trivial,
> > most deleted code are from erofs specific fault injection, which was
> > followed f2fs and previously discussed in earlier topic [1], but
> > let's follow what Christoph's said now.
> > 
> > Comments and suggestions are welcome...
> 
> Do you have a git branch available somewhere containing the state
> with all these patches applied?

here you are...
git://git.kernel.org/pub/scm/linux/kernel/git/xiang/linux.git -b erofs-experimental

Thanks,
Gao Xiang

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
