Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D812E94FD1B
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2024 07:13:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D324240495;
	Tue, 13 Aug 2024 05:13:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1GkaXpBbmlIA; Tue, 13 Aug 2024 05:13:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB17B409C8
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB17B409C8;
	Tue, 13 Aug 2024 05:13:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D630B1BF41D
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2024 05:13:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C275440D6F
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2024 05:13:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vQb-E6Kv8k0d for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2024 05:13:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=gregkh@linuxfoundation.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 38C85405AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38C85405AE
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 38C85405AE
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2024 05:13:09 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id DE86DCE1068;
 Tue, 13 Aug 2024 05:13:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 735BCC4AF09;
 Tue, 13 Aug 2024 05:13:04 +0000 (UTC)
Date: Tue, 13 Aug 2024 07:13:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Li Li <dualli@chromium.org>
Subject: Re: [PATCH v1] add binder genl for txn report
Message-ID: <2024081341-egging-custodian-428d@gregkh>
References: <20240812211844.4107494-1-dualli@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240812211844.4107494-1-dualli@chromium.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1723525985;
 bh=fq8pIBrcKsf2cWfAXmWVMPY2GtmcWbx9jO20zAVHRFM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OTD84jCvvDHfJPQnt8gP2DKiFHpaenceqwi4ygkXOEar9DJpXhtDYgO6KvqKaV98y
 LtqsBZSZMDrXXi+oTwWYelEPoMI+ZtVVhJ1S1zbjHVstBj51oGFZ1HVemlkc5bA5Lo
 J6yGCM+SCXeNQVT5aYXCmAkJ8pGLSsrl5uR7Uzbk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linuxfoundation.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org
 header.a=rsa-sha256 header.s=korg header.b=OTD84jCv
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
Cc: dualli@google.com, devel@driverdev.osuosl.org, brauner@kernel.org,
 kernel-team@android.com, tkjos@android.com, arnd@arndb.de, surenb@google.com,
 masahiroy@kernel.org, cmllamas@google.com, linux-kernel@vger.kernel.org,
 hridya@google.com, arve@android.com, smoreland@google.com,
 joel@joelfernandes.org, maco@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 12, 2024 at 02:18:44PM -0700, Li Li wrote:
> From: Li Li <dualli@google.com>

Sorry, but I can not parse your Subject: line at all.  Please use
vowels, we don't have a lack of them :)

Also look at how other patches are formatted for these files to get an
idea of how to create a good subject line.

> Frozen tasks can't process binder transactions, so sync binder
> transactions will fail with BR_FROZEN_REPLY and async binder
> transactions will be queued in the kernel async binder buffer.
> As these queued async transactions accumulates over time, the async
> buffer will eventually be running out, denying all new transactions
> after that with BR_FAILED_REPLY.
> 
> In addition to the above cases, different kinds of binder error codes
> might be returned to the sender. However, the core Linux, or Android,
> system administration process never knows what's actually happening.
> 
> This patch introduces the Linux generic netlink messages into the binder
> driver so that the Linux/Android system administration process can
> listen to important events and take corresponding actions, like stopping
> a broken app from attacking the OS by sending huge amount of spamming
> binder transactions.
> 
> To prevent making the already bloated binder.c even bigger, a new source
> file binder_genl.c is created to host those generic netlink code.

"genl" is a rough abbreviation that is not going to be easy to remember,
what's wrong with "binder_netlink.c"?


> 
> Usage example (user space pseudo code):
> 
> 	// enable binder report from the interested binder context(s)
> 	struct binder_report_info info = {0, BINDER_REPORT_ALL};
> 	ioctl(binder1, BINDER_ENABLE_REPORT, &info);
> 	ioctl(binder2, BINDER_ENABLE_REPORT, &info);
> 
> 	// set optional per-process report, overriding the global one
> 	struct binder_report_info info2;
> 	info2.pid = getpid();
> 	info2.flags = BINDER_REPORT_FAILED | BINDER_REPORT_OVERRIDE;
> 	ioctl(binder2, BINDER_ENABLE_REPORT, &info2);
> 
> 	// open netlink socket
> 	int fd = socket(AF_NETLINK, SOCK_RAW, NETLINK_GENERIC);
> 
> 	// bind netlink socket
> 	bind(fd, struct socketaddr);
> 
> 	// get the family id of binder generic netlink
> 	send(fd, CTRL_CMD_GETFAMILY, CTRL_ATTR_FAMILY_NAME);
> 	int id = recv(CTRL_ATTR_FAMILY_ID);
> 
> 	// register the current process to receive binder reports
> 	send(fd, id, BINDER_GENL_CMD_REGISTER);
> 
> 	// verify registration by reading back the registered pid
> 	recv(fd, BINDER_GENL_ATTR_PID, &pid);
> 
> 	// wait and read all binder reports
> 	while (running) {
> 		struct binder_report report;
> 		recv(fd, BINDER_GENL_ATTR_REPORT, &report);
> 
> 		// process struct binder_report
> 		do_something(&report);
> 	}
> 
> 	// clean up
> 	close(fd);

What userspace code is now going to use this and require it?  How was it
tested?  Where is the test code?  Where is the new user/kernel api that
you created here documented?

You added a new ioctl here as well, why not mention that?  Why is it
needed?  Why not always emit netlink messages?  How do you turn them
off?

And how does this deal with binder namespaces?  Are these messages all
now "global" somehow?  Or are they separated properly per namespace?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
