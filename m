Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF4873967
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 21:40:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E82E98614E;
	Wed, 24 Jul 2019 19:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NSSjphgiyX5Q; Wed, 24 Jul 2019 19:37:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3DDF585FD6;
	Wed, 24 Jul 2019 19:37:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9AEF71BF3BF
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 19:37:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 95C2E86B1C
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 19:37:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jkAN8yahSbGE for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 19:37:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D18D186D95
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 19:36:59 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id d23so46727767qto.2
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 12:36:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Z7pnaGuYc9LFLbT5aUxNfUlnE7ek1gcnJ4zW5L3HylM=;
 b=HYqN4SVFSrpUcjH4L6duXRwsb5f6S+OSc/c002NBdjCGgnTzXDiwR2B8xDhMkO2D6U
 3dvOGbKBi+wHf+8kwmWuC83itZJBq1uENfJN0Tw8+q3o8Yleo5kyC4FUGG9oal0Me0RP
 vumw9iCHxQrx1TD8sDhr6ZXdUbU5tne3m29mtDGPDksJn7IIwgwvtVhjRQrjnGWXFsJC
 DCgpBi/AdVrzGIeomVr0+uNRPeKj3LU3gKPDSgNHtDyE8xZb1KZv1ucapEJcPS3X2tQ3
 81awdHrxlWdCRlbC7GOzrtRgclgXznj0PQUw+QETg1WZHPrNZglxCKmwx6I6ipYmc/Ji
 Vvxw==
X-Gm-Message-State: APjAAAWEjCxV+F0XXtIPyG24Kb5e72wuQYa0afHVGlJMArzAOK6Xvl4q
 Dy5jQ6YChCid1KnH9upE3wIQZg==
X-Google-Smtp-Source: APXvYqwNTwfZ7UhOrUsmMJREZDSG4r+F8zrpdIk7pUPLDp8e5SLJxmNngfBQGNr0NG9bBAHOHmh5zA==
X-Received: by 2002:ac8:1887:: with SMTP id s7mr59031081qtj.220.1563997018800; 
 Wed, 24 Jul 2019 12:36:58 -0700 (PDT)
Received: from [192.168.1.157] (pool-96-235-39-235.pitbpa.fios.verizon.net.
 [96.235.39.235])
 by smtp.gmail.com with ESMTPSA id q17sm16672031qtl.13.2019.07.24.12.36.57
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 12:36:58 -0700 (PDT)
Subject: Re: Limits for ION Memory Allocator
To: alex.popov@linux.com, Sumit Semwal <sumit.semwal@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, arve@android.com,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>,
 Riley Andrews <riandrews@android.com>, devel@driverdev.osuosl.org,
 linaro-mm-sig@lists.linaro.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 dri-devel@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 Brian Starkey <brian.starkey@arm.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Mark Brown <broonie@kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Linux-MM <linux-mm@kvack.org>, Dmitry Vyukov <dvyukov@google.com>,
 Andrey Konovalov <andreyknvl@google.com>, syzkaller@googlegroups.com,
 John Stultz <john.stultz@linaro.org>
References: <3b922aa4-c6d4-e4a4-766d-f324ff77f7b5@linux.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <40f8b7d8-fafa-ad99-34fb-9c63e34917e2@redhat.com>
Date: Wed, 24 Jul 2019 15:36:57 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <3b922aa4-c6d4-e4a4-766d-f324ff77f7b5@linux.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/17/19 12:31 PM, Alexander Popov wrote:
> Hello!
> 
> The syzkaller [1] has a trouble with fuzzing the Linux kernel with ION Memory
> Allocator.
> 
> Syzkaller uses several methods [2] to limit memory consumption of the userspace
> processes calling the syscalls for testing the kernel:
>   - setrlimit(),
>   - cgroups,
>   - various sysctl.
> But these methods don't work for ION Memory Allocator, so any userspace process
> that has access to /dev/ion can bring the system to the out-of-memory state.
> 
> An example of a program doing that:
> 
> 
> #include <sys/types.h>
> #include <sys/stat.h>
> #include <fcntl.h>
> #include <stdio.h>
> #include <linux/types.h>
> #include <sys/ioctl.h>
> 
> #define ION_IOC_MAGIC		'I'
> #define ION_IOC_ALLOC		_IOWR(ION_IOC_MAGIC, 0, \
> 				      struct ion_allocation_data)
> 
> struct ion_allocation_data {
> 	__u64 len;
> 	__u32 heap_id_mask;
> 	__u32 flags;
> 	__u32 fd;
> 	__u32 unused;
> };
> 
> int main(void)
> {
> 	unsigned long i = 0;
> 	int fd = -1;
> 	struct ion_allocation_data data = {
> 		.len = 0x13f65d8c,
> 		.heap_id_mask = 1,
> 		.flags = 0,
> 		.fd = -1,
> 		.unused = 0
> 	};
> 
> 	fd = open("/dev/ion", 0);
> 	if (fd == -1) {
> 		perror("[-] open /dev/ion");
> 		return 1;
> 	}
> 
> 	while (1) {
> 		printf("iter %lu\n", i);
> 		ioctl(fd, ION_IOC_ALLOC, &data);
> 		i++;
> 	}
> 
> 	return 0;
> }
> 
> 
> I looked through the code of ion_alloc() and didn't find any limit checks.
> Is it currently possible to limit ION kernel allocations for some process?
> 
> If not, is it a right idea to do that?
> Thanks!
> 

Yes, I do think that's the right approach. We're working on moving Ion
out of staging and this is something I mentioned to John Stultz. I don't
think we've thought too hard about how to do the actual limiting so
suggestions are welcome.

Thanks,
Laura

> Best regards,
> Alexander
> 
> 
> [1]: https://github.com/google/syzkaller
> [2]: https://github.com/google/syzkaller/blob/master/executor/common_linux.h
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
