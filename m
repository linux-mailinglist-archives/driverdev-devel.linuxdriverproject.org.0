Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE082A6F2E
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 21:51:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5425F87196;
	Wed,  4 Nov 2020 20:51:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E1tIy+yylylA; Wed,  4 Nov 2020 20:51:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A6F69870FF;
	Wed,  4 Nov 2020 20:51:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 519291BF30E
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 20:51:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4C27120242
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 20:51:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BNVGjOHEScmq for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 20:51:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [212.227.15.3])
 by silver.osuosl.org (Postfix) with ESMTPS id A945D2014B
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 20:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1604523045;
 bh=zXLy2macP7vO12eaEE949ba4xupS0WKjcG7bwZx5l0M=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=NxkzlvNIpxFVJgLcrNge7M7onrKnpeETLDDpbHlme0lmKty6FOmMwraogQzbOWpNs
 zlkGJd1gtznuiBjiCJ3Ve0CV6zgnFHxzmqVygTmOhm+2DiuLEy3XQmQ/uNQOY+ey/8
 iLGc4s6W4XLl+2JGZy5MmMCeLvTWNhgB7O3AuqeE=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([93.132.3.233]) by smtp.web.de (mrweb002
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0Lw189-1kHfb61Ia5-017lY0; Wed, 04
 Nov 2020 21:50:45 +0100
Subject: Re: [v2] media: atomisp: Fix error handling path
To: Dan Carpenter <dan.carpenter@oracle.com>, linux-kernel@vger.kernel.org
References: <1604455331-28031-1-git-send-email-jrdr.linux@gmail.com>
 <65712450-1ee9-2dd3-cd43-f850807ae203@web.de> <20201104083121.GG18329@kadam>
 <85ff17ad-8aa7-a457-6e23-4f5c1c5152f2@web.de> <20201104114015.GH18329@kadam>
From: Markus Elfring <Markus.Elfring@web.de>
Message-ID: <4fac89cb-0420-8211-6f10-f03f78588744@web.de>
Date: Wed, 4 Nov 2020 21:50:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201104114015.GH18329@kadam>
Content-Language: en-GB
X-Provags-ID: V03:K1:Fhjuhbre9iPU0pJsNWp/vbjjRLvJrKhBMvdPphM42qsuBkFWTe8
 41Tmcv+ZT80w4+O2fzhSlSy09Q7R7N3Qt4+yQwoDK7X1kQ2oIokxBzKKhkfw6Br/NhGvawM
 OcIukAudUXT9eOKfkEEOuZscTnvUDIZoYtdEN3tVdn9RUDckdSlZ2lmX5Ub51gKVgS86Wsc
 YVoVrdMAutlf9MBp0xgGg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:KJ8xlMxwEFM=:gvhSORh8zZW5SnwNuCmJdg
 8KLkRh9Kei5N6S01LaKIpABNHOXJLAdkbaJhrJ0YMrqQAVJ5gem+BSj0nBDFv/X9F6F4gAwTY
 o6kDtGeSjDz8d9raUgWGXZWg78MZrBjvgbnVEVtpEsufYn/JHQmzSaX5iJFya7cTE2/iVuSGb
 +xyS8JthhOD9JiLKCUw4+fzHHZQeH9LjPxJqwI6YX0KGYRjUNfzoh4egN+Umx6gJcrXDroM17
 ck90HbvhBdXp14UHrr6FNIOk6Yvg44hza3smYhJIT009Ds+aXprh+XXJvCYVxBRAO2qfHvcBr
 jXJ+gOKCiAIVVOrLCap3rwWC8Nl+H+8GS46eumHLDlj0vX9McjkEPNKMr7cf88vC//jNci4Yt
 A/e70caK9hqfEGhNIEifQh1h22r7s2MREQDLQyfQiMc7TGAxFBPk4gmkHH8mBx+y7ZKJvUNIh
 cojiHfALDRAhBJzIfaZdaPPsxaU0EDmfGf0neaNlbVMWoVDs43WgDiulWOu/mXi/ew31Fr4QU
 xS4SomSmxjokOaX2aOadBRMYGoGQlOiJbzbm4blmqKmy+vXw4AX4DWO1+pC4UrowhQqNT/IOh
 SZ+kAPtm3c5nD4gnHyZoj1/xpPjUct+7FzFFWBRo7Xjf1Yq6HI18UrOh64CkQfBOFlPsDMMqC
 nK3UsLHUfhCxX4iKlrGxxNePxJIHiBorcBpSvbAe225yaUz6rdMWNL5+jTDqcunYBao/259f8
 0etDH5ZIkmKN3hlLXGGWnjBXrKJopr7q8kP4R8zFRLmBOtgS1Vp9CeIP66KG/clbCU4V1/vtB
 23mDU71uHh4crItPoso3ClG4OSnxE/IfOTCP3W44VIo6UWG+uuS6+1Hz7NBRJ2g7bs+Kl11kz
 xP3A4BjaqdFiGQJmBl/w==
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
Cc: devel@driverdev.osuosl.org, Michel Lespinasse <walken@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 John Hubbard <jhubbard@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Vlastimil Babka <vbabka@suse.cz>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst?id=4ef8451b332662d004df269d4cdeb7d9f31419b5#n123
>
> The documentation is correct but no one wants you to constantly be
> nagging developers about minor stuff...

Would you interpret patch review attempts in any other directions?

Regards,
Markus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
