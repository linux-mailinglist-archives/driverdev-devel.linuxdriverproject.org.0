Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6614810D3CF
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Nov 2019 11:20:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0302386C29;
	Fri, 29 Nov 2019 10:20:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qd3pNOKm_QnU; Fri, 29 Nov 2019 10:20:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1DE186C04;
	Fri, 29 Nov 2019 10:19:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8635E1BF349
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 10:19:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8280D87D6F
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 10:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3vFixkfzgGRt for <devel@linuxdriverproject.org>;
 Fri, 29 Nov 2019 10:19:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9EC5087D47
 for <devel@driverdev.osuosl.org>; Fri, 29 Nov 2019 10:19:56 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id e28so7210583ljo.9
 for <devel@driverdev.osuosl.org>; Fri, 29 Nov 2019 02:19:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Nkz44mhoHDVLzUp+/+JjQSxpcp30cfW8CdRZ0pMQCHA=;
 b=C8qqMwiUg2EQQIyQWENXq2kGZsqOFbOYYAPq3mnPaWPE55qYXi6+1tgUhei2DmGqKe
 Cxo5Go9pZI7p3sLcnIBVMwPxMTywujcJBTi0koiOXiDEAWKvWKYgrQrAPVQifKz2EuwL
 M3yEbAEJoaZeXtze1X5rs81GIMo+5EqbzL7zB4gp39+03Djv1rO3vu/UnzkVsCUUGI0R
 +4L+p3DWxRP9y+kBCW/jv8qoqWPntgpfDL2/8iG+oNv90vmmNfldvcEmYL1VS+vMXw4s
 ETos6k4KdC0/9vfpO/RN/KBmH0MyfLWgK5TAK5df5QYbavfqHH5JNHpa91x1PFfKTjK1
 pGIw==
X-Gm-Message-State: APjAAAWheSqk6khMVPnXH+YlWG2Re3Aa/lt4FZq9H7jYpBP+maT5++S2
 0vMh7o7ACgJsWaZ2fY4Wu4s=
X-Google-Smtp-Source: APXvYqxAfvdzr+rRXM1jO65af/PU54ixUlxEaF5CH6lMjYgGG/YUfbUODMZ7BHGj1brVNpUmRRyjAQ==
X-Received: by 2002:a2e:88c4:: with SMTP id a4mr56115ljk.174.1575022794828;
 Fri, 29 Nov 2019 02:19:54 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id a9sm5432369lfi.50.2019.11.29.02.19.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 02:19:54 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iadNU-0002YX-72; Fri, 29 Nov 2019 11:19:56 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/4] staging: gigaset: fix crashes on probe
Date: Fri, 29 Nov 2019 11:17:49 +0100
Message-Id: <20191129101753.9721-1-johan@kernel.org>
X-Mailer: git-send-email 2.24.0
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
Cc: devel@driverdev.osuosl.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Syzbot has been reporting a GPF on probe in the gigaset ISDN driver,
which have since been moved to staging.

The first patch fixes that issue, and the next one fixes a second crash
found during testing.

The third patch addresses a benign warning in USB core which syzbot is
bound to report once the crashes have been fixed.

And while I hate playing checkpatch games, the final patch addresses a
checkpatch warning introduced on purpose by the third patch.

Johan


Johan Hovold (4):
  staging: gigaset: fix general protection fault on probe
  staging: gigaset: fix illegal free on probe errors
  staging: gigaset: add endpoint-type sanity check
  staging: gigaset: rename endpoint-descriptor identifier

 drivers/staging/isdn/gigaset/usb-gigaset.c | 39 ++++++++++++++--------
 1 file changed, 26 insertions(+), 13 deletions(-)

-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
