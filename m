Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B4E315471
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 17:55:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9ACF66F63C
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 16:55:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BorA4jQAcwEF for <lists+driverdev-devel@lfdr.de>;
	Tue,  9 Feb 2021 16:55:15 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id E075C6F60C; Tue,  9 Feb 2021 16:55:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6035F6F53F;
	Tue,  9 Feb 2021 16:54:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2CB4A1BF983
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 16:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C0CF6F4D2
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 16:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jcAiwfrDHq6x for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 16:54:40 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 643A76F544; Tue,  9 Feb 2021 16:54:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55FD26F4D2
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 16:54:39 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id cv23so1891179pjb.5
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 08:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=KZUX7FP4jCIk8Zl2hRkPFxX/WkJeOnd5PVnNwEG8MTk=;
 b=gi8vbwJcIws9pSGCWYEgr/OIE/bVGYkBheuDPdEAi58+xM5kG9IofO+2uYFNcuTq1M
 0gTuxT1Yv2BcOCHJ3tSuRPAaHtoIgjZ/src7l+q+WAcFGnN7ec37c38yedtWB6VfrgkX
 OaCuYFD0kS2kjRXUwK+tVp3TGyP3WCd4sea4+CNJbCGgGBOiBPdLWB+Se9NZqeB0CfyZ
 hOwFx4ZsOEmuXHMpdZ7XS0IVJlRc/IjfUgqhHjdmo7Z4QOis9+cisnKbY4OuehJD31si
 KSJDbmQE3ejM6OaVUppvyuaBWQ5bDiPjRyhq8tqR6Ack3slFNNELBJzbow0CmdPJmuI8
 1TtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=KZUX7FP4jCIk8Zl2hRkPFxX/WkJeOnd5PVnNwEG8MTk=;
 b=N04urmwBtgIdJ7XQCCZZWM0QQd5I5GKWxLPZdpJIRGE74ZXR3hyCU/MrKPe0Ud0BSs
 eP7Wax+dN2Caf+HydoxwLlMng1oqLrW7kdOgr1AkJVdmUTXFSt4on8LDlGwYK4yS9Qz4
 fufcS4MHfYqg34e4jVlo4k/HdTS2jn93FbJIrSSOqPs2YEmWKeS3E0jMmJZyFSDJBhYo
 7BF17P0YsrtSueZBB4BTPYNws7A7tmY2Ms3WY5A5HhhPVpDbgSze6eUXoa1RFEOy48Mx
 gYqRsjYHJV2rjOy1MO0yzO6AXeoR++41JllaBQQk8okFXMRxjc2M3WwCrqYW+ea0IhE4
 nmTA==
X-Gm-Message-State: AOAM530MKiGaIxntqFql6gKT+JsNzP6uveJ9FqIIcu+PuePItIzArLw/
 AMYQGmS7J70Vyb78oJZ+Yq8JZarXhXA=
X-Google-Smtp-Source: ABdhPJzRy+XeYnG0jlJG059xb+d0Qg+XfJyooDgyIXiQehlftO0eSUBfr+SjXGiJs58UNDdBh6BF+g==
X-Received: by 2002:a17:90a:34cb:: with SMTP id
 m11mr4908193pjf.59.1612889678540; 
 Tue, 09 Feb 2021 08:54:38 -0800 (PST)
Received: from ?IPv6:2402:3a80:1b9d:c0a3:895c:fc89:d136:c94c?
 ([2402:3a80:1b9d:c0a3:895c:fc89:d136:c94c])
 by smtp.gmail.com with ESMTPSA id j26sm21632018pfa.35.2021.02.09.08.54.36
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Feb 2021 08:54:37 -0800 (PST)
From: Zuria Williams <williamszuria@gmail.com>
To: devel@driverdev.osuosl.org
Subject: Fwd: Idea for a mobile app?
Message-ID: <0da925d9-3433-c4f6-5d6a-aac4869e0c16@gmail.com>
Date: Tue, 9 Feb 2021 22:24:34 +0530
User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
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

Hello,

Did you get a chance to review my previous email?

Could we schedule a call for Wednesday (10th Feb) or Thursday(11th Feb) 
so we can discuss Mobile app or Web app development requirements you may 
have? Please suggest a day and time and share the best phone number to 
reach you.

Thank you
Zuria Williams

On Tuesday 27 October 2020 6:12 PM, Zuria Williams wrote:

Hello,

Would you like me to schedule a call so we can talk about Mobile app and 
Web app development requirements your company may have? Please suggest a 
day and time.

We are a mobile app and web app development company; we build custom 
solutions based on required functional specifications that automate 
various business applications.

Look forward to your response.

Thanks & Regards,
Zuria Williams
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
