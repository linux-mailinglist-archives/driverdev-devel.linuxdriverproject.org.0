Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8681C2A61B9
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 11:36:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C58EF85D3D;
	Wed,  4 Nov 2020 10:36:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qVKlr4YghDEH; Wed,  4 Nov 2020 10:36:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C71085E28;
	Wed,  4 Nov 2020 10:36:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3E0AA1BF844
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 10:36:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 381CF869CF
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 10:36:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YUveh2nnrvgG for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 10:36:24 +0000 (UTC)
X-Greylist: delayed 00:05:17 by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [212.227.15.4])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 54272867DA
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 10:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1604486181;
 bh=z3t0srAKdQNve/OozQnfoHePKXubKTEGf2jCiZUlVsY=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=kBri+Kcp0JKWygcrG8G1z7iTlXp98Q2+9JFmTHGReOzc7bGV/Q6QtYoM1bk/dAtM4
 PRGnBwazQsuSF6YSVMruWskk+PXg10KAsDyhOGnHzMREFW66Qj7L25bMChkz4jwVSE
 +NDeSkKM8zL8SRCTx7YNxCaVqkHuy1xOQtNHLd7M=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.3] ([93.132.3.233]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1M3m9H-1kZywe3OBH-0012Ws; Wed, 04
 Nov 2020 11:30:39 +0100
Subject: Re: [v2] media: atomisp: Fix error handling path
To: Dan Carpenter <dan.carpenter@oracle.com>, linux-kernel@vger.kernel.org
References: <1604455331-28031-1-git-send-email-jrdr.linux@gmail.com>
 <65712450-1ee9-2dd3-cd43-f850807ae203@web.de> <20201104083121.GG18329@kadam>
From: Markus Elfring <Markus.Elfring@web.de>
Message-ID: <85ff17ad-8aa7-a457-6e23-4f5c1c5152f2@web.de>
Date: Wed, 4 Nov 2020 11:30:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201104083121.GG18329@kadam>
Content-Language: en-GB
X-Provags-ID: V03:K1:5lVs2dFbwHqXB74UYxGmyN4T7WNYGCv8yP2dGibxBff4YzkdgiQ
 Lzt9KjYxwjntgTf5Aub40szEiDxQGmBVKUBdPgLe/WlsBTc8xVaJoIrsvQbvVSgznImUxfn
 hlmZK9FEex/soBTZGTB/XKmVkVZSOFYztvLNBSeenRZWuoqmDb3Y7bLDMv2AzzpKpTWZ/FQ
 QBavAe5+qmK/CGTWTV5/Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:SRpLDZrhNVw=:uyYZid6j22rnlhG9JjCHhg
 9ILkSCIEqDgWIrEyDodkkkLUOW/uEpBSSnDjxWJXThgkmZpG6g6o0RoB04zm5w8U62dNjn/8x
 FlYvv/t+46pd2ccC+H+8mkks5d20XeX3/2iVRSaZv+3KrT5pqVS4pdLlqPM1Lj7KUwJMRja4y
 4+0O1O9MbBGUL5YgtBG7lTI/5tcorLbhFWGmMgbSrHPQt4/g1+LZPI+4oh2w0lw+NPHOr5s5f
 V62BOpmhOf5douJlJQVvWch/iTNdWIb3dMyftAcrVE/fdqHhL/Lkn/3gFodpQYl3QXKnjGdqY
 f1r4pYwLlGluCPHEl1dPHkz0zE6ar5IfNlNY88v79EyhvjMSYjUIzuFge/NII+UnZ1Ww269eM
 t7EnTwQUW+Q1VVCbSDP4OMhKofNPy9E1ViXZBPpugPocGLTX4W3RVtgqAjImrbUE+vCXX1y4T
 yK6XlWI0I7D1ZmZzJ3Rh30LqBdJgqElRQCRK92m1oy+9vpruqE/9ga7wImBeeoYQGQlQoyVlX
 abiSfuJfabWwbTNQGLAp9iMjseVh+T07mHFXD4W00HGB+byg9tNA1pkw4RCE20Ojx0rL95nMn
 Z3n9jN8jas0K1H7KNxqGZ6X4MmOE8MuuhKMaEvEGCGiMsFMqUZwIw8nDBynoqvGjY4cU5DPYK
 3u199PSyP5g7+MzpMQ2WyB/NxUDJjTeJtd8PTF7Bg+5EvOpAYsc/gIjR/ADMWkCUycLKjmM8m
 O9nEulUX9vk+azKkDjwjv8tfFlA5qxieSXe1dkTXnReF2LJA79cr81qxOJeE7tHqu+o5/3qTF
 xAngQG5Bh/ut/UJmJPBRkmlxNoE9K+Ey91IKyl888rDGV9ueuFLY94BlRRAEhNoey3Y/wvyBX
 q0cAuxpDL0oydHbGr2Sw==
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

>>> Fixes: 14a638ab96c5 ("media: atomisp: use pin_user_pages() for memory
>>> allocation")
>>
>> Please delete a line break for this tag.
>
> Markus, the thing is that we all saw the line break and we just thought
> it didn't matter at all...

Do you disagree to the known documentation then?
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst?id=4ef8451b332662d004df269d4cdeb7d9f31419b5#n123

Regards,
Markus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
