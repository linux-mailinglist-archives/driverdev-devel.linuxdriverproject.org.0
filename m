Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF65331E799
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 09:45:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71151605D9
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 08:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9yAFbQdTufcW for <lists+driverdev-devel@lfdr.de>;
	Thu, 18 Feb 2021 08:45:09 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id F0596605BE; Thu, 18 Feb 2021 08:45:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A700760591;
	Thu, 18 Feb 2021 08:44:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 169F01BF312
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 08:44:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 13C9086AEB
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 08:44:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KR0eL2FWhuO7 for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 08:44:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
 [209.85.215.180])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7978B86A10
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 08:44:42 +0000 (UTC)
Received: by mail-pg1-f180.google.com with SMTP id o63so727098pgo.6
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 00:44:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A8UH8Y8lnFDky7j02NHxVDP5/IqVpxpPoD+z++23Jjw=;
 b=KcPhApM8QnfE4f6XhayOfxpNYtpLFoBj4X6Q50ax20kEpve+i2AY2e7hE+/RvDRK94
 G1079KlZZE+OeMHGr56EnqRiIY7hsaait//CumGNLzc2dzjOZ1XFqxxXNoZM3BZYst5v
 rS4N3BdRHSou9HQSO+sDhsPcogyRhZRN6KPiSyir0Beo26QXjdXQZwC0Wk0BRLTccwKN
 MpWs4HgGExNeIMGrbco2wT1lbefbHeyFQol17vD+cX+B7wLlrHmFQhvJxzsRmtchR4CM
 +5TofU5YQ+gC4PYHRllmnAS7hoTAunscoPFiQePc8diCok1A//q+GNdwAizix9wNTr8c
 cXow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A8UH8Y8lnFDky7j02NHxVDP5/IqVpxpPoD+z++23Jjw=;
 b=PUIdLw156o1tE7kH+1SYxNCtirEt63h2csZ6NV9hqWeVlBv0xdR9CBtZJPpSCc9KXa
 pcoO8z5sZiTbclz5oNCZdAbNvIL1xvloO81LjWQ8mnqWm7nePpP267kKyJGoTEfbDKGu
 0G/7Jx7W2n8wjEQNVHShUTut6fZsz1gN3+1OJeetAAS52gfN0fc+0rCkNAk/le6mC2eL
 BS+Fez4s4AT/JkaOP/uODTmpzn+vxMrmghyCAdo+L+idy52nGF29F7vGpL4TqbYtScW2
 oAT/TAi6bLWEj9wGzo+1bLg3UtSBJf2lTffeDy54wP869sUD5oIey2WzhziXSpP4/vOZ
 OzSg==
X-Gm-Message-State: AOAM53392lxf7OzN7ABOgW/S+fZIIoKl8TmFNadZhyagfR2E2R66L4se
 Mucez7RXRULJDekXIkAB3dY=
X-Google-Smtp-Source: ABdhPJw8yyKBD2DR0EjYn0UoijXcz7jeuCoHRYAwEUJcFfGRh1Fv15rr4596TMoqt4RVchZmyV8coQ==
X-Received: by 2002:a63:e64e:: with SMTP id p14mr3120255pgj.374.1613637882213; 
 Thu, 18 Feb 2021 00:44:42 -0800 (PST)
Received: from localhost.localdomain ([106.200.12.142])
 by smtp.gmail.com with ESMTPSA id u20sm4941761pjy.36.2021.02.18.00.44.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 00:44:41 -0800 (PST)
From: Atul Gopinathan <atulgopinathan@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/2] staging: comedi: cast function argument to expected
 type (void __user *)
Date: Thu, 18 Feb 2021 14:14:04 +0530
Message-Id: <20210218084404.16591-2-atulgopinathan@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210218084404.16591-1-atulgopinathan@gmail.com>
References: <20210218084404.16591-1-atulgopinathan@gmail.com>
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
Cc: devel@driverdev.osuosl.org, abbotti@mev.co.uk, linux-kernel@vger.kernel.org,
 Atul Gopinathan <atulgopinathan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resolve the following sparse warning:

drivers/staging//comedi/comedi_fops.c:2983:41: warning: incorrect type in argument 1 (different address spaces)
drivers/staging//comedi/comedi_fops.c:2983:41:    expected void [noderef] <asn:1> *uptr
drivers/staging//comedi/comedi_fops.c:2983:41:    got unsigned int *chanlist

cmd->chanlist is of type (unsigned int *) as defined in
"struct comedi_cmd" in file drivers/staging/comedi/comedi.h

The function "ptr_to_compat()" expects argument of type
(void __user *) as defined in include/linux/compat.h

Signed-off-by: Atul Gopinathan <atulgopinathan@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index fc4ec38012b4..8b2672c3c408 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -2980,7 +2980,7 @@ static int put_compat_cmd(struct comedi32_cmd_struct __user *cmd32,
 	v32.stop_src = cmd->stop_src;
 	v32.stop_arg = cmd->stop_arg;
 	/* Assume chanlist pointer is unchanged. */
-	v32.chanlist = ptr_to_compat(cmd->chanlist);
+	v32.chanlist = ptr_to_compat((void __user *)cmd->chanlist);
 	v32.chanlist_len = cmd->chanlist_len;
 	v32.data = ptr_to_compat(cmd->data);
 	v32.data_len = cmd->data_len;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
