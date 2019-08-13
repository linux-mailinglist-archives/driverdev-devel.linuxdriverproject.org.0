Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D41A8AEE4
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2019 07:40:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 307EA86DEA;
	Tue, 13 Aug 2019 05:40:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q4IFc12GH01o; Tue, 13 Aug 2019 05:40:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDD1386D9A;
	Tue, 13 Aug 2019 05:40:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1516A1BF368
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 05:40:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1151B86DAB
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2019 05:40:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7iGI13OlRCv2 for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2019 05:40:39 +0000 (UTC)
X-Greylist: delayed 00:15:09 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 863B486D9A
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2019 05:40:38 +0000 (UTC)
Received: from [192.168.178.60] ([109.104.47.130]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MPGiR-1hevT50O45-00PbYR; Tue, 13 Aug 2019 07:23:46 +0200
Subject: Re: [PATCH v2 15/34] staging/vc04_services: convert put_page() to
 put_user_page*()
To: john.hubbard@gmail.com, Andrew Morton <akpm@linux-foundation.org>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
 <20190804224915.28669-16-jhubbard@nvidia.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <f92a9b35-072c-a452-3248-ded047a9ee7e@i2se.com>
Date: Tue, 13 Aug 2019 07:23:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190804224915.28669-16-jhubbard@nvidia.com>
Content-Language: en-US
X-Provags-ID: V03:K1:WLtnGHSdIdsSOgSCw9gLWN/He07a3vhG8P/jw9q/ZsKCLbsJUeS
 5llVNlt7KE/tvHn+5EOmDYYv4pX1cHVWKOXHtrw4HQWAHuCkTohFsgxlEY0fExapDm8vR8t
 zVIsUr/Bms6Kvxj5sCY8IbKiNL01LBum+j6x95pPZHXG9iG9KDUI7QIiVK2/58tc3NB1jnX
 y7VHJG/KIA+fGCfAbINIQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:6It6nEr622I=:4jmfBBNg8JeI+fVpUCP3CZ
 BI65IiHMrek8tR9A4b9XC/wpz/h+QAbr4W/xRR42HUM5kE4ZWjhHKQg4cP7V7aFyQ0r4BZk4z
 6OADogg0y2TUlQLKRSS2fxEQI9C/KbHShd7kgSgbUMIYi0UmHdrMKYvWBBMUGPTA7lHuVgMKf
 4sdPFphDkZ+Y6BAEqIJlSmHYLgGDn3LPMVKTc+JSa1VKf8Dzp3/vydG0qa3r+xOePLtomhF0i
 YvhVczDb0+9rnSyhX4qy7S8Q4nO2A4u3sCJy6MHenS3ymTB6UZQzlj4Ec9WrA/iQCHbwx6IrP
 5SvUEUjIRn4KZzJC/MmwUq927dVyjZ1v8R+hOz5eOy50kc0I5c2PhIsggEyt/oS2HaoPQ2xcy
 4D4DsiggNXktw1Fn3n2B4ZZrOzzVwiRO6WbBhN/nRnH+fDWWNZ0+3SLH+fYTPy3jvhbqXHKIL
 jP0b5p9CKyhk1bpOWGYggs/qi/uPx17vP92m4pApNBBpcovlQcO6lJafP63iUW+cHJOgH2ylQ
 3naCKyqIz0ECqeP3XTInK4NBcheCqQrqHLtvgF6zN/jd6+ymk0ux2u8qBdrmbOTTywW9XKVz8
 qeHB4Pu+7ZL52du7thyALEcDzhNwIDHxdMr+fvQ+QxV4ODmqN7G7bY9/Hg2tDQ1kVJEgr8hKi
 jKTorBFeVSQAZXdVyxrVYucdqnJZcZeUGNp4+0ZUdRjzFz0ZeX2pNELPiOy5vu7lWFXAqRBGP
 sQ9OTxp85NBaTUww0ACCmgKBAA6twPpOTDdrY25lhIEz0NBqehqiX1Tmk0ZOpqtoD9I+xg013
 rODwvDGgCpVqVFZ0TmfVwxI22nlZCMXkIDnIonvIIlS9+4m4tt8D51HIDqzVU2bB6mw5PhXVF
 ZXIMeoOIIaR1lEfzRFa/l53kN/oOHJbhMsk9Fd73ZDB68Z05Fc2HyBTCGbks2C9eaigUx2Rc/
 tlG+0PywSeiVO0hXkG5a1SZchISlNFmE=
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Suniel Mahesh <sunil.m@techveda.org>,
 Dan Williams <dan.j.williams@intel.com>, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, John Hubbard <jhubbard@nvidia.com>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, Mihaela Muraru <mihaela.muraru21@gmail.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel@vger.kernel.org,
 Sidong Yang <realwakka@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 Kishore KP <kishore.p@techveda.org>, linux-fsdevel@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 05.08.19 00:48, john.hubbard@gmail.com wrote:
> From: John Hubbard <jhubbard@nvidia.com>
>
> For pages that were retained via get_user_pages*(), release those pages
> via the new put_user_page*() routines, instead of via put_page() or
> release_pages().
>
> This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
> ("mm: introduce put_user_page*(), placeholder versions").
>
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>
> Cc: Eric Anholt <eric@anholt.net>
> Cc: Stefan Wahren <stefan.wahren@i2se.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Mihaela Muraru <mihaela.muraru21@gmail.com>
> Cc: Suniel Mahesh <sunil.m@techveda.org>
> Cc: Al Viro <viro@zeniv.linux.org.uk>
> Cc: Sidong Yang <realwakka@gmail.com>
> Cc: Kishore KP <kishore.p@techveda.org>
> Cc: linux-rpi-kernel@lists.infradead.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: John Hubbard <jhubbard@nvidia.com>
Acked-by: Stefan Wahren <stefan.wahren@i2se.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
