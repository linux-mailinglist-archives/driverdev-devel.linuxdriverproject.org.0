Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 194FB9C229
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Aug 2019 07:55:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C1B8D87DDB;
	Sun, 25 Aug 2019 05:55:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2nuR1mCimjcL; Sun, 25 Aug 2019 05:55:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4646087DA1;
	Sun, 25 Aug 2019 05:55:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 057231BF5A7
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 05:55:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F1A2387DA6
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 05:55:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CfJdG9CWo62F for <devel@linuxdriverproject.org>;
 Sun, 25 Aug 2019 05:55:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 52E6A87DA1
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 05:55:01 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9EF832173E;
 Sun, 25 Aug 2019 05:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566712501;
 bh=69Dd3cxMzVXwSlvnkLCJy5vK3Jh0jn9ZRYvTt9nJZmo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PeHhQ3uKBQJl05VKSJ90jjNiod2bpoqNFMzwL8aKyT9Nc9eGr6Lx6Qgv6QlVjHUTu
 6aijPy61FTF569IsxgIyzG7DcxChg7OhewNhjxByR1deb0IudWAUxXCHAiGqNsFX96
 PUrSrjqfrfGIp1n+wRdc670Cgz+br9WDiX7Hy70A=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org, elder@kernel.org,
 johan@kernel.org
Subject: [PATCH 2/9] staging: greybus: remove license "boilerplate"
Date: Sun, 25 Aug 2019 07:54:22 +0200
Message-Id: <20190825055429.18547-3-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190825055429.18547-1-gregkh@linuxfoundation.org>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
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
Cc: Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Greer <mgreer@animalcreek.com>, linux-kernel@vger.kernel.org,
 Viresh Kumar <vireshk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When the greybus drivers were converted to SPDX identifiers for the
license text, some license boilerplate was not removed.  Clean this up
by removing this unneeded text now.

Cc: Johan Hovold <johan@kernel.org>
Cc: Alex Elder <elder@kernel.org>
Cc: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Cc: Mark Greer <mgreer@animalcreek.com>
Cc: Viresh Kumar <vireshk@kernel.org>
Cc: "Bryan O'Donoghue" <pure.logic@nexus-software.ie>
Cc: greybus-dev@lists.linaro.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 .../Documentation/firmware/authenticate.c     | 46 -------------------
 .../greybus/Documentation/firmware/firmware.c | 46 -------------------
 drivers/staging/greybus/arpc.h                | 46 -------------------
 drivers/staging/greybus/audio_apbridgea.h     | 26 +----------
 .../staging/greybus/greybus_authentication.h  | 46 -------------------
 drivers/staging/greybus/greybus_firmware.h    | 46 -------------------
 drivers/staging/greybus/greybus_protocols.h   | 46 -------------------
 drivers/staging/greybus/tools/loopback_test.c |  2 -
 8 files changed, 1 insertion(+), 303 deletions(-)

diff --git a/drivers/staging/greybus/Documentation/firmware/authenticate.c b/drivers/staging/greybus/Documentation/firmware/authenticate.c
index 806e75b7f405..3d2c6f88a138 100644
--- a/drivers/staging/greybus/Documentation/firmware/authenticate.c
+++ b/drivers/staging/greybus/Documentation/firmware/authenticate.c
@@ -2,54 +2,8 @@
 /*
  * Sample code to test CAP protocol
  *
- * This file is provided under a dual BSD/GPLv2 license.  When using or
- * redistributing this file, you may do so under either license.
- *
- * GPL LICENSE SUMMARY
- *
  * Copyright(c) 2016 Google Inc. All rights reserved.
  * Copyright(c) 2016 Linaro Ltd. All rights reserved.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of version 2 of the GNU General Public License as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License version 2 for more details.
- *
- * BSD LICENSE
- *
- * Copyright(c) 2016 Google Inc. All rights reserved.
- * Copyright(c) 2016 Linaro Ltd. All rights reserved.
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions
- * are met:
- *
- *  * Redistributions of source code must retain the above copyright
- *    notice, this list of conditions and the following disclaimer.
- *  * Redistributions in binary form must reproduce the above copyright
- *    notice, this list of conditions and the following disclaimer in
- *    the documentation and/or other materials provided with the
- *    distribution.
- *  * Neither the name of Google Inc. or Linaro Ltd. nor the names of
- *    its contributors may be used to endorse or promote products
- *    derived from this software without specific prior written
- *    permission.
- *
- * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
- * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
- * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
- * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL GOOGLE INC. OR
- * LINARO LTD. BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
- * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
- * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
- * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
- * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
- * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
- * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
 #include <stdio.h>
diff --git a/drivers/staging/greybus/Documentation/firmware/firmware.c b/drivers/staging/greybus/Documentation/firmware/firmware.c
index 31d9c23e2eeb..765d69faa9cc 100644
--- a/drivers/staging/greybus/Documentation/firmware/firmware.c
+++ b/drivers/staging/greybus/Documentation/firmware/firmware.c
@@ -2,54 +2,8 @@
 /*
  * Sample code to test firmware-management protocol
  *
- * This file is provided under a dual BSD/GPLv2 license.  When using or
- * redistributing this file, you may do so under either license.
- *
- * GPL LICENSE SUMMARY
- *
  * Copyright(c) 2016 Google Inc. All rights reserved.
  * Copyright(c) 2016 Linaro Ltd. All rights reserved.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of version 2 of the GNU General Public License as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License version 2 for more details.
- *
- * BSD LICENSE
- *
- * Copyright(c) 2016 Google Inc. All rights reserved.
- * Copyright(c) 2016 Linaro Ltd. All rights reserved.
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions
- * are met:
- *
- *  * Redistributions of source code must retain the above copyright
- *    notice, this list of conditions and the following disclaimer.
- *  * Redistributions in binary form must reproduce the above copyright
- *    notice, this list of conditions and the following disclaimer in
- *    the documentation and/or other materials provided with the
- *    distribution.
- *  * Neither the name of Google Inc. or Linaro Ltd. nor the names of
- *    its contributors may be used to endorse or promote products
- *    derived from this software without specific prior written
- *    permission.
- *
- * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
- * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
- * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
- * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL GOOGLE INC. OR
- * LINARO LTD. BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
- * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
- * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
- * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
- * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
- * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
- * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
 #include <stdio.h>
diff --git a/drivers/staging/greybus/arpc.h b/drivers/staging/greybus/arpc.h
index 3dab6375909c..c8b83c5cfa79 100644
--- a/drivers/staging/greybus/arpc.h
+++ b/drivers/staging/greybus/arpc.h
@@ -1,53 +1,7 @@
 /* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
 /*
- * This file is provided under a dual BSD/GPLv2 license.  When using or
- * redistributing this file, you may do so under either license.
- *
- * GPL LICENSE SUMMARY
- *
  * Copyright(c) 2016 Google Inc. All rights reserved.
  * Copyright(c) 2016 Linaro Ltd. All rights reserved.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of version 2 of the GNU General Public License as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License version 2 for more details.
- *
- * BSD LICENSE
- *
- * Copyright(c) 2016 Google Inc. All rights reserved.
- * Copyright(c) 2016 Linaro Ltd. All rights reserved.
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions
- * are met:
- *
- *  * Redistributions of source code must retain the above copyright
- *    notice, this list of conditions and the following disclaimer.
- *  * Redistributions in binary form must reproduce the above copyright
- *    notice, this list of conditions and the following disclaimer in
- *    the documentation and/or other materials provided with the
- *    distribution.
- *  * Neither the name of Google Inc. or Linaro Ltd. nor the names of
- *    its contributors may be used to endorse or promote products
- *    derived from this software without specific prior written
- *    permission.
- *
- * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
- * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
- * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
- * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL GOOGLE INC. OR
- * LINARO LTD. BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
- * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
- * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
- * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
- * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
- * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
- * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
 #ifndef __ARPC_H
diff --git a/drivers/staging/greybus/audio_apbridgea.h b/drivers/staging/greybus/audio_apbridgea.h
index 330fc7a397eb..3f1f4dd2c61a 100644
--- a/drivers/staging/greybus/audio_apbridgea.h
+++ b/drivers/staging/greybus/audio_apbridgea.h
@@ -1,30 +1,6 @@
 /* SPDX-License-Identifier: BSD-3-Clause */
-/**
+/*
  * Copyright (c) 2015-2016 Google Inc.
- * All rights reserved.
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions are met:
- * 1. Redistributions of source code must retain the above copyright notice,
- * this list of conditions and the following disclaimer.
- * 2. Redistributions in binary form must reproduce the above copyright notice,
- * this list of conditions and the following disclaimer in the documentation
- * and/or other materials provided with the distribution.
- * 3. Neither the name of the copyright holder nor the names of its
- * contributors may be used to endorse or promote products derived from this
- * software without specific prior written permission.
- *
- * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
- * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
- * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
- * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
- * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
- * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
- * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
- * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
- * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
- * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
- * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 /*
  * This is a special protocol for configuring communication over the
diff --git a/drivers/staging/greybus/greybus_authentication.h b/drivers/staging/greybus/greybus_authentication.h
index d654760cf175..7edc7295b7ab 100644
--- a/drivers/staging/greybus/greybus_authentication.h
+++ b/drivers/staging/greybus/greybus_authentication.h
@@ -2,54 +2,8 @@
 /*
  * Greybus Component Authentication User Header
  *
- * This file is provided under a dual BSD/GPLv2 license.  When using or
- * redistributing this file, you may do so under either license.
- *
- * GPL LICENSE SUMMARY
- *
  * Copyright(c) 2016 Google Inc. All rights reserved.
  * Copyright(c) 2016 Linaro Ltd. All rights reserved.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of version 2 of the GNU General Public License as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License version 2 for more details.
- *
- * BSD LICENSE
- *
- * Copyright(c) 2016 Google Inc. All rights reserved.
- * Copyright(c) 2016 Linaro Ltd. All rights reserved.
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions
- * are met:
- *
- *  * Redistributions of source code must retain the above copyright
- *    notice, this list of conditions and the following disclaimer.
- *  * Redistributions in binary form must reproduce the above copyright
- *    notice, this list of conditions and the following disclaimer in
- *    the documentation and/or other materials provided with the
- *    distribution.
- *  * Neither the name of Google Inc. or Linaro Ltd. nor the names of
- *    its contributors may be used to endorse or promote products
- *    derived from this software without specific prior written
- *    permission.
- *
- * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
- * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
- * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
- * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL GOOGLE INC. OR
- * LINARO LTD. BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
- * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
- * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
- * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
- * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
- * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
- * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
 #ifndef __GREYBUS_AUTHENTICATION_USER_H
diff --git a/drivers/staging/greybus/greybus_firmware.h b/drivers/staging/greybus/greybus_firmware.h
index 13ef3aa5279e..f68fd5e25321 100644
--- a/drivers/staging/greybus/greybus_firmware.h
+++ b/drivers/staging/greybus/greybus_firmware.h
@@ -2,54 +2,8 @@
 /*
  * Greybus Firmware Management User Header
  *
- * This file is provided under a dual BSD/GPLv2 license.  When using or
- * redistributing this file, you may do so under either license.
- *
- * GPL LICENSE SUMMARY
- *
  * Copyright(c) 2016 Google Inc. All rights reserved.
  * Copyright(c) 2016 Linaro Ltd. All rights reserved.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of version 2 of the GNU General Public License as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License version 2 for more details.
- *
- * BSD LICENSE
- *
- * Copyright(c) 2016 Google Inc. All rights reserved.
- * Copyright(c) 2016 Linaro Ltd. All rights reserved.
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions
- * are met:
- *
- *  * Redistributions of source code must retain the above copyright
- *    notice, this list of conditions and the following disclaimer.
- *  * Redistributions in binary form must reproduce the above copyright
- *    notice, this list of conditions and the following disclaimer in
- *    the documentation and/or other materials provided with the
- *    distribution.
- *  * Neither the name of Google Inc. or Linaro Ltd. nor the names of
- *    its contributors may be used to endorse or promote products
- *    derived from this software without specific prior written
- *    permission.
- *
- * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
- * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
- * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
- * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL GOOGLE INC. OR
- * LINARO LTD. BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
- * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
- * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
- * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
- * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
- * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
- * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
 #ifndef __GREYBUS_FIRMWARE_USER_H
diff --git a/drivers/staging/greybus/greybus_protocols.h b/drivers/staging/greybus/greybus_protocols.h
index 7d649a7fc4c9..5f34d1effb59 100644
--- a/drivers/staging/greybus/greybus_protocols.h
+++ b/drivers/staging/greybus/greybus_protocols.h
@@ -1,53 +1,7 @@
 /* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
 /*
- * This file is provided under a dual BSD/GPLv2 license.  When using or
- * redistributing this file, you may do so under either license.
- *
- * GPL LICENSE SUMMARY
- *
  * Copyright(c) 2014 - 2015 Google Inc. All rights reserved.
  * Copyright(c) 2014 - 2015 Linaro Ltd. All rights reserved.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of version 2 of the GNU General Public License as
- * published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License version 2 for more details.
- *
- * BSD LICENSE
- *
- * Copyright(c) 2014 - 2015 Google Inc. All rights reserved.
- * Copyright(c) 2014 - 2015 Linaro Ltd. All rights reserved.
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions
- * are met:
- *
- *  * Redistributions of source code must retain the above copyright
- *    notice, this list of conditions and the following disclaimer.
- *  * Redistributions in binary form must reproduce the above copyright
- *    notice, this list of conditions and the following disclaimer in
- *    the documentation and/or other materials provided with the
- *    distribution.
- *  * Neither the name of Google Inc. or Linaro Ltd. nor the names of
- *    its contributors may be used to endorse or promote products
- *    derived from this software without specific prior written
- *    permission.
- *
- * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
- * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
- * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
- * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL GOOGLE INC. OR
- * LINARO LTD. BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
- * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
- * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
- * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
- * OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
- * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
- * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
 #ifndef __GREYBUS_PROTOCOLS_H
diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index cebc1d90a180..ba6f905f26fa 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -4,8 +4,6 @@
  *
  * Copyright 2015 Google Inc.
  * Copyright 2015 Linaro Ltd.
- *
- * Provided under the three clause BSD license found in the LICENSE file.
  */
 #include <errno.h>
 #include <fcntl.h>
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
