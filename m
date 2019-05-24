Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C89C928F60
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 05:03:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 79E968665F;
	Fri, 24 May 2019 03:03:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 04gOfVpXczlM; Fri, 24 May 2019 03:03:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1AA6E82DFC;
	Fri, 24 May 2019 03:03:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E53D91BF3D2
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 03:03:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E25E288A41
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 03:03:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pb+dKbvdz7NK for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 03:03:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7D01688548
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 03:03:10 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id t187so5961084oie.10
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 20:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P/mticNGqlZT4FHVrZAivG939m0DEWwlRFOLuXxMIKc=;
 b=aMM7ilwXZ5jZQhsdIJHkTFnFk12H9TUIjfz/TTFCekyngUm/hGrnEakzz3Pf6djt4D
 DcaE0fCswN8n1CYD/dPWS49ayld8akpFyIHkG/OSg04RMOr1xHm4ggb00zKb1GsTlmhl
 DxR4xDmH0qbh673oo4ZxaoGCnfJTJdk0OGFX7nQvq0NzMBbPkZkwqD/aGTDdp3gGvhC9
 Ib+GzHRcelGy4AoffSX0+AaqaFPADhjBAGOwGg4k8uOgN7iZfEBOBCetKR/z+9Q81TjF
 Fr5hEWU7gsErRXDnpoMhNzBwL75aQbA9yjSu/f/9zaBs6Ku5lCJRvC1qntyTgJ8jL3av
 WX/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P/mticNGqlZT4FHVrZAivG939m0DEWwlRFOLuXxMIKc=;
 b=ssGHH2x9V0/Ox1YEBxyHxg3WU8HvQ1CsT6oE8KFP08V5Obeg3H4zMVGYicoDWyhkTN
 IbALC0VNBQu/3U4mxFJiCxsws3ysqf1seUK7mmnSPKyc0voOYthJzNaq2p/KywvSnNuQ
 1kO8hYMrYGwWGzHjHNe0tE3PUPRs4BVgJASwKLhlPxCVe9ZBIp3I56bAq8sjI/UxTXsM
 QCDDh4WqWKp06MmBMS36GTmnLDm1I40xaoRSxXLmjOTwuI3htEED6mQlQx+wM332MAQP
 3ZkOkSoNJZ8HhXGQ5p6Nmo9GODAPO/moo4AWNc4IfazmrmbXrYkaGJgJaOVd6dNbhA7k
 RZrA==
X-Gm-Message-State: APjAAAVAYVpN39qEYBSITy+gMTd378HMNz3VfhxK0R38+j6s4TLOzHuC
 WjE6vTSfaoNpboxGHXgB/a3rVrJ+SB7Bd9m69yo=
X-Google-Smtp-Source: APXvYqxPK8vbagl5ku5f4zn/OXi9FAw+sLQe1hcUrylW86bXhvq7dpjX4BoC9fSp2iLZkaZaqlbW2K9NCBXK2im4XEQ=
X-Received: by 2002:aca:72c5:: with SMTP id p188mr4633017oic.116.1558666989682; 
 Thu, 23 May 2019 20:03:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190523053643.GA14465@kroah.com>
 <20190524023639.6773-1-gneukum1@gmail.com>
In-Reply-To: <20190524023639.6773-1-gneukum1@gmail.com>
From: Geordan Neukum <gneukum1@gmail.com>
Date: Fri, 24 May 2019 03:02:48 +0000
Message-ID: <CA+T6rvH0M2jy_FscF4RMseBKDpLMG8yukzzLjZuys_LY4SbOGA@mail.gmail.com>
Subject: Re: [PATCH v2] staging: kpc2000: Add dependency on MFD_CORE to
 kconfig symbol 'KPC2000'
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 24, 2019 at 2:38 AM Geordan Neukum <gneukum1@gmail.com> wrote:
> +       depends on MFD_CORE

In order for this to work in menuconfig, this either needs to be a
select or I need to
add a prompt to MFD_CORE. I don't have strong feelings either way, but all other
Kconfig options which are related to the MFD_CORE appear to do a straight
selection. Let me know what you think and I'll go that route.

Thanks,
Geordan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
