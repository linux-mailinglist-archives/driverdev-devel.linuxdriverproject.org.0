Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1632A5EAA
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 08:21:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C91692285E;
	Wed,  4 Nov 2020 07:21:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MU8r45thc0XW; Wed,  4 Nov 2020 07:21:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F323620797;
	Wed,  4 Nov 2020 07:21:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 405D31BF228
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 07:21:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3AE0A874A5
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 07:21:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H9hoa3Yz+tiH for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 07:21:52 +0000 (UTC)
X-Greylist: delayed 00:05:18 by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [217.72.192.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CC7E78748D
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 07:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1604474509;
 bh=HB94RK7rPrUAMb2QwCw9IBgdswqG/8KrSr+j3yGQncs=;
 h=X-UI-Sender-Class:To:Cc:References:From:Subject:Date:In-Reply-To;
 b=A+rCUT4rc+VEv+d9nTMhkCAK+qAQ4/2QjNBpuBGEySPQxw9Fd6+Fk6gcoXnlFZPh7
 00tdENBTm0xzhTSwBlfnE9htiohYbV0WHy2PnTwA8BB6jzaDRSi90YToYhJ165icIq
 KGOzUqs2vor4oreLTgzz8X3TgrhcB8zypxLN9hcA=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([93.132.3.233]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MiuSs-1k6cxr3qWS-00ez8w; Wed, 04
 Nov 2020 08:16:04 +0100
To: Souptick Joarder <jrdr.linux@gmail.com>, devel@driverdev.osuosl.org,
 linux-media@vger.kernel.org
References: <1604455331-28031-1-git-send-email-jrdr.linux@gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH v2] media: atomisp: Fix error handling path
Message-ID: <65712450-1ee9-2dd3-cd43-f850807ae203@web.de>
Date: Wed, 4 Nov 2020 08:15:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <1604455331-28031-1-git-send-email-jrdr.linux@gmail.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:GsfF8WDcq8EIMKy84nnn797erulor5TekYOiLR3EprjmMHG+puV
 Jl/jxZMUUwtrMrjAxlWfLbhaQk/ZlGUa+nGR4Mni9zcWRvp9DRqdGDI5HXRej+IlJQWBe5Y
 QDjw4bjyz9GajjbI/lmKSOPkLKCd/25i3MvsYBIygl+7Gb9TK2GIcpZf1UTW9o+w0DBfO+P
 CNks/KNRcQpB8v3c5Y98w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:HL273OLy7Rw=:j2R8vnvYerQSXG9NfOR2f0
 te7mNLAhhTa6irx8N74FHOhWHa5heF4uXYrwmdhaigX5TIHRA6ggRK/uZeDTczEdrJiUEvaBq
 auEGi2vPgM2kxIYj7PpPkLT8nHU27qaMZPfR0ywFwiWgcX+UF3OPafEtlJuCrFxlAHh38z/z4
 caMemZzyl7SeQngsBVLFOk80xKM3+k5Ni40q0oVU8fohm/8oj2CaXHXfGE6YPKLBgKKg9gZgO
 djAfk9DRWFdV1fwQVhYyTGb7KhfbWy4Xurj2fab4A8KNXn9/0HGgI9a1Sl8xfQmV872QcQFVT
 iUb8CmvDh4KTsM4qLQV2kOi6Rmw3oc4dSV05C9ohz1LhwzpxPWFgSj39YDIzhleyRX4H0TxE4
 C+r3fKmgpJ7ONhiOz3HLDvzyFMSA4Ut7WmXr8a1Z/pcq8UT2c+3DrdyzrAW8ImdX0Unx6P25I
 Fa57qbQTW3tos5p7N8NuBioV3feQJM3Gs2p6CNDMEHDlxSlJ0arN8dCLx4MgktrUz57dxSHeh
 rMZ3EFYFefSUjqPy90KS8qx/v+GW9Duflw0/4njm5l/Y/44l9up3FjVDYp8U0IbiOwYbbYuD8
 SBrN89t+aVPdjK3fI7rasvac6Vex0kz9YUgMU+4Fo3eno86z55jjFpr1Ul7lALGjIUTe6+U6/
 fvjf4yun2aEy7rfIcVZJRcAWALQ0RXyehyOlKRsbPT7Nb/hjTthsk6l9CD5k7jWwzTG83GgKA
 568BAkY2C4rTtVIwN17JtA3jBUKzUWjxtbCcrKIxraKOXLPeEILfigB9Gcz1NAuBtiKDaB7KV
 N9d0KN9tLNZCbtbihdw2z6U/yCA8EXNLfJYj75Vt9MP0riluLvsmyJn/pZZgkkyqn1Cnt5oBu
 toTEPJXJsjBUvb2NhKFQ==
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Vlastimil Babka <vbabka@suse.cz>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Michel Lespinasse <walken@google.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 John Hubbard <jhubbard@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> Fixes: 14a638ab96c5 ("media: atomisp: use pin_user_pages() for memory
> allocation")

Please delete a line break for this tag.

Regards,
Markus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
