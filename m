Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADF17024E
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 16:27:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 73B592045E;
	Mon, 22 Jul 2019 14:27:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DjNhk34Pplrv; Mon, 22 Jul 2019 14:27:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5F0B5203D6;
	Mon, 22 Jul 2019 14:27:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD8141BF275
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 14:27:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A860F862E8
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 14:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id plhZn1fIPuKu for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 14:27:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic308-54.consmr.mail.gq1.yahoo.com
 (sonic308-54.consmr.mail.gq1.yahoo.com [98.137.68.30])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5E0F386292
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 14:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1563805624; bh=xECj9m2xLSVUpudrwyR6+luhiAWEZ0tY/RvhMhV/bZQ=;
 h=Subject:To:References:From:Cc:Date:In-Reply-To:From:Subject;
 b=b3OzPbc49iklhkBZJEKxy2IONINghyXwF78lQoMF+TEkeztZXGPe3+v6JRHszNyljknl/RLfiWnhYsg2udSJxcDABTYM5t6hQ02Sa5qooKbGSHr9+FuzHjQ+A4E51v+hM02Oxth81/01cdyk6uPSwRirtd5uc5zsPNsm3ptaT5oiE43SRyJOdNzVDnXRA5wxw2YtXRK1LtynbJbDZiR42nzUS8tz/QtvE3mZKKTFvvSc4j2OzeWc65UQ0F4D0qfzpRQuc1V/wPsNqmXhTsf3+jqUmqRQdSzOV81SHATrwUdn9ghfZZJgMtzjbxjfG/+hb04JDhCoV03/aT6GqSpttA==
X-YMail-OSG: H0aMGxQVM1mvOAgQM.BAOlrQE3d.1NSa3bvXBG0WEx9WjJxsItK445bMZKRUfVj
 12opgBUymkaVs.u7jpTtxwwa_9GIYRGzyhxP6dFJwVGqa21crki_tZyomWJOspBHrkG9SPzOKRBm
 D7ufuipeZJ7UXSx_RvAPo1oddnINNrEZbgnso0SMh553gm4Xt3I2HWp8fvGcF6wC3PGdYKtMa9jb
 578ArDg3h4v1MjhPDB6Yf2MNsqlnGKnShpZs.JY5Uv9ecp94VS.Xos8wHOoSC8S1EDaDh6IBNxvu
 uj7xNLnuYXObUN4PIY3VjFIDlpf_6R7gyqFs_MMqi4yvgBqOackLXCeycoj91kprPwdmyDJwqs.f
 qir7zoltA1FLl.Cj98THb5yimboDtcDxjbyuE.lCfxzOK4IYr2Vsv4uJbjBGzM7YKtqDwG6a1BFU
 5vXXwcxGBSMoAOhO2E._UA.d4RMenZngT0tdB29RPSnv9XwU9TfnEJiPRL2LUnFhSc4FORGXT.2O
 cw69s15OhmZoJQ6f28ofqR521zU.v26Y4Iec1F9ToyPo_MGHv9TBwI02C7DES2z7rA6YAQ3Mgj8o
 oIjXLO3uZgny.L4lKW78IIxNLfaOgz_y67rH1D_M6H6M_O52G9R_M91TaCDFALRslgEEZDaglPFc
 ZKN5_BPt65jOgxl8gJjJxvb4XNdvsp6HqydGveyY.rPIDQrxpS1C2hQQSPEoiN1u1D8rfKmBF4jn
 J2ETvbcvpMU2zbc4y9tCM7LxVzANwro0rulZ3cyLrlQczLrV0cNkZ0mxaJggRaFnekjy.3Wo87wS
 .c.iEQfKP0Iy3QCR.ncEBd2t0meT1xzXtXPBSuCMzkntXiJhpB08vTX_vvdnZRd0PCDGU7lHiY0x
 D1oqCQA2kTK0XjqzjSs3QXiLWscRb6qoJUsNpRKzg70YDMsmpzUySjxHcKk4AxSE8Uzaxgsb6mV7
 yD2xECQ56Ln6ogsx6pNFVewDSl3s.WnSrg.94IsYLIrKYwzUnELlNev9aaC_Ln6eaWFZfudS4Qsg
 swka882uKsWuYoaxWR1boPTytRoNqgmNKZ0UTHudEkDFBqvOOxamSY7ar5_FpTaW7Sp7AEzyhS0F
 pW6c_6jmAxUWcSiXK_t6sBXTwuAyBb7AI2DYphKjPe.j6jJUobyHkSPyAi.Vkve0W1fMbwwRkGof
 PUhAMEvlKm0rhLQsm_SnAx4sgaAMGCWQ.psCllwsv4F8tC2Bc3YOlLiNWdu.ncQ--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.gq1.yahoo.com with HTTP; Mon, 22 Jul 2019 14:27:04 +0000
Received: by smtp411.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 947e087edc5dc48dc717612cdbe533da; 
 Mon, 22 Jul 2019 14:16:59 +0000 (UTC)
Subject: Re: [PATCH v3 23/24] erofs: introduce cached decompression
To: "Theodore Y. Ts'o" <tytso@mit.edu>
References: <20190722025043.166344-1-gaoxiang25@huawei.com>
 <20190722025043.166344-24-gaoxiang25@huawei.com>
 <20190722101818.GN20977@twin.jikos.cz>
 <41f1659a-0d16-4316-34fc-335b7d142d5c@aol.com>
 <20190722132513.GA5172@mit.edu>
From: Gao Xiang <hsiangkao@aol.com>
Message-ID: <db672675-c471-5bc8-af15-91c1859e9008@aol.com>
Date: Mon, 22 Jul 2019 22:16:44 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722132513.GA5172@mit.edu>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, linux-erofs@lists.ozlabs.org, dsterba@suse.cz,
 Li Guifu <bluce.liguifu@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Ted,

On 2019/7/22 ????9:25, Theodore Y. Ts'o wrote,
> On Mon, Jul 22, 2019 at 06:58:59PM +0800, Gao Xiang wrote:
>>> The number of individual Kconfig options is quite high, are you sure you
>>> need them to be split like that?
>>
>> You mean the above? these are 3 cache strategies, which impact the
>> runtime memory consumption and performance. I tend to leave the above
>> as it-is...
> 
> Unless cache strategies involve a huge amount of kernel code, I'd
> recommend always compiling all of the cache strategies, and then have
> a way to change the cache strategy via a mount option (and possibly
> remount, although that can get tricky if there is already cached
> information).  You could also specify a default in the erofs
> superblock, you think that would be useful.
OK, I will give a try. One point I think is how to deal with the case
if there is already cached information when remounting as well as you said.

As the first step, maybe the mount option can be defined as
allowing/forbiding caching from now on, which can be refined later.

Thanks,
Gao Xiang

> 
> 	    	      	   	    - Ted
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
