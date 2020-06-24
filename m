Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B16207B64
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 20:20:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E7F7B8651C;
	Wed, 24 Jun 2020 18:20:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dzcbKihVf9Fl; Wed, 24 Jun 2020 18:20:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E21886447;
	Wed, 24 Jun 2020 18:20:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 90AFA1BF97C
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 18:20:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8D5718773E
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 18:20:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iVVcYDs56nF0 for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 18:20:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3C67B877D3
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 18:20:46 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id o2so3445754wmh.2
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 11:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6Vleye7CC8rp9HmgWi8FAgP7rYcGWjtwE7dt8Z3MwY4=;
 b=jCQ1uYsB4U63S3rHflAJNyX6222z3WhCOta6eutYbKFPmc/AcWK8S8+tqvN/YbnVH3
 xBpMYwgo8Szf4n1Hz5uTPIa4aD5Ze8BOHkeQJiOUUjvbIY32wXONIO466363yb3yXoQW
 Ar9x5sRpamgIALfwpB8gkEO8DnB6z3g75e/IfzL05m+P0Nj4QCCrJM6DUS7UiqIzCxAx
 V1HJjT1KhMCZx/FBRy5z6qykineFleOwEE9olWXb8quOfs4uyPrX/GS0DWOEzC6BQeYO
 InE/KYxLK9nUSKBd6Hbmm+gQ0SPjLzDJqkARZLTWxCe7io8bg9YUA0PzAz56yuF/qRMn
 9fTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6Vleye7CC8rp9HmgWi8FAgP7rYcGWjtwE7dt8Z3MwY4=;
 b=JN2gKF95I+qmqBeyX4rN8q7HooHI+PIP0w3NtHNBP1V/pAEVE4j2/V9Es9o9c7cLAj
 CCs6f2k4x6VUEt3Ra6LFcPebuWqnCWbJNbSfL8jnTzufz/OnisH3H0qB8UFSnnKoHubo
 9WmvVIzytr/qdC3OBep1sdwRDffIaN/88yFdkgH+DixOqbuuLL6HB3dtB1S1S3aycZHw
 SsCb3ttlMyulpzTR3hLepfBezf4W9jZdiz3gp9uKGPuTr6DKzWQmOrfPZ4a3ix9bVgKN
 yTYgQrtatBqrde+y8I+zw/xXUJXp7iKw4rC1PoucqY+n7LDXbGUyNd3oPISBjHt+Oajd
 92oQ==
X-Gm-Message-State: AOAM531zvYn7TvtimR6C6LzFZ4zK/aQt/p3U1J8brkb0gUDpqCMyEPcj
 UrCo3U8U2WZ5C/hoMMzADPg=
X-Google-Smtp-Source: ABdhPJyZzGiM75u54h28sYyOyG8YEivuGmMOz1X1Kltj2RuOa4YyW9kE8HqIjE+rymAEjMZgjAyZTw==
X-Received: by 2002:a1c:4e10:: with SMTP id g16mr29920990wmh.98.1593022843708; 
 Wed, 24 Jun 2020 11:20:43 -0700 (PDT)
Received: from garrit-VirtualBox.fritz.box ([94.31.102.44])
 by smtp.gmail.com with ESMTPSA id w13sm28532046wrr.67.2020.06.24.11.20.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 11:20:43 -0700 (PDT)
From: Garrit Franke <garritfranke@gmail.com>
To: dan.carpenter@oracle.com
Subject: [PATCH v2 0/2] staging: vc04_services: vchiq_arm: replace bitshift
 with BIT macro
Date: Wed, 24 Jun 2020 20:20:33 +0200
Message-Id: <20200624182035.16740-1-garritfranke@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200619080121.GV4151@kadam>
References: <20200619080121.GV4151@kadam>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Garrit Franke <garritfranke@gmail.com>, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

thanks for your review. Yes, this is supposed to be a cleanup. I didn't
make that clear. I removed the unnecessary parentheses, as suggested.

Regards,
Garrit Franke

Garrit Franke (2):
  staging: vc04_services: vchiq_arm: replace bitshift with BIT macro
  staging: vc04_services: vchiq_arm: Remove unnecessary parens

 .../interface/vchiq_arm/vchiq_core.c          | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
