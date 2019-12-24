Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 107C6129F33
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Dec 2019 09:37:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB18285785;
	Tue, 24 Dec 2019 08:37:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sr-xGS8xCfPU; Tue, 24 Dec 2019 08:37:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 501C385775;
	Tue, 24 Dec 2019 08:37:36 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4D9EC1BF981
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 24 Dec 2019 08:37:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 42E4E85775
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 24 Dec 2019 08:37:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eAv4G-kOjRlp
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 24 Dec 2019 08:37:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B247885531
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 24 Dec 2019 08:37:23 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id e6so17618051qtq.7
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 24 Dec 2019 00:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=LcGU1mt+nAQIi3eKcWZpiy7DqrkNG23tK1MNYV9CB+M=;
 b=eygDl7YBOCWWlQe5JjF71GUH0MxM2GnwKjuCnN7TJql3Th2giuJ6whXX6bgil+EExJ
 9q7jYtqcvwBdzX9QmcdS5Or8CwSEfjU/0/6EcB0lhs2iKt4PXI5gP8H4utHkg0jLU9pY
 B3mJ64Fh1mzjTJR24vDJfgXQy9lm4sSOGyTAmophO5wmGAx5nYj7rGjQfi7P3LAErQ+9
 nhoHpZhHZfmEvsP3QBOkQ8v7+CQPKZ7xdr5PRDvAs49FpgCEc+DOuULzYeX+h2ST5GXh
 R1VWtI5/q+jGX0u6pDRVuuLWSSgz7y4RrZwwTh9WgOyOHzfF2l/9tXjgijxyMV1XszYE
 /ocA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=LcGU1mt+nAQIi3eKcWZpiy7DqrkNG23tK1MNYV9CB+M=;
 b=iMhG+jByDvbRdy2+9u4XyycPf6yAh3KhloGNdkrNzkt2dnZgKtL0Lyu8mgOEfwHK49
 IDGxfZzOMRrbSF3qpJGR6x7fR7/c0rmWBz51ENAdVDi7n1IGrOat1kRQxeN5tbIIOjYE
 id0H+NEVtlXFHdc7I714qpjw4R7q80Wj/ep1TRBD3fyUxN4IAPHWrI11QpSn1mGMCKmS
 CcURpd3o7jxjheXENkBYaedqI9z1lGGBSmDQduPQS4qWiCQKdGi2nbX123/wdaqi8TMs
 mo4zYzqB6JYdmSFPHSQG5piwsaHaLeWGg+CsBYzR14A9421X71TDIIeP6bE6MAWioeCU
 sh+Q==
X-Gm-Message-State: APjAAAXvug/IaAFvqU8JyyD0vH77tBNp1Wz49+afuAkTVmIcQlGpXUcj
 Fo7Un8YGUNG5EG7Z/i10bVMag3UlRCdfpUu53GU=
X-Google-Smtp-Source: APXvYqyA2n44646Wl9JB8Imy9OLLzJdjXN8GcJmUl6KzhAVYFQ3YkgwqF66v+1Fe8G1X849TvuFmMEcglRF1JWQ82U4=
X-Received: by 2002:ac8:2b26:: with SMTP id 35mr26070705qtu.341.1577176642769; 
 Tue, 24 Dec 2019 00:37:22 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:530a:0:0:0:0:0 with HTTP; Tue, 24 Dec 2019 00:37:22
 -0800 (PST)
From: Beth Nat <anthonymoore105@gmail.com>
Date: Tue, 24 Dec 2019 08:37:22 +0000
Message-ID: <CAKqrdYA5V4KZX0c4sA1FEJYxSJKRN5oMbBm3OFwOCwGFzixGXg@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
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
Reply-To: bethnatividad9@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

How are you today my dear? i saw your profile and it interests me, i
am a Military nurse from USA. Can we be friend? I want to know more
about you.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
