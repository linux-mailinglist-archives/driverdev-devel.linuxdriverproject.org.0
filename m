Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D03F1E884A
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 22:01:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0F11289422;
	Fri, 29 May 2020 20:01:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DzPQavv2-bAy; Fri, 29 May 2020 20:01:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85C77893E9;
	Fri, 29 May 2020 20:01:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C2AB01BF5F6
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BF6B887539
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:00:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LYtRRQxLoDys for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 20:00:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EE60187375
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 20:00:53 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MirfG-1j2QA92mrE-00ev6U; Fri, 29 May 2020 22:00:41 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 6/9] staging: media: atomisp: fix type mismatch
Date: Fri, 29 May 2020 22:00:28 +0200
Message-Id: <20200529200031.4117841-6-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
References: <20200529200031.4117841-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:9ERfkDS39QaOEAH/LNtEg5SZtZjwNIsVwGEjhU9+K4cojGf/K7V
 UoWP2n2dxRTtvmH/nsnxAotxP4hMMygcv035tiVShwjEzCZowyjapFC1LoVOT8iA6CmbgF5
 E7amGwkRPMGWe5ol9GUJdYDg3PV8fvBrPq5BepHLEg/k344kt+HTTEzVppIY3v5/Bj+7QS2
 hL4QtaQY8ORyH/lbNqluA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:mnqBXKoOQtc=:6yvsMKsJ87sOKVL5KlMlyJ
 NM2zqmK1kVt+2jS4Gxf2DCxE1uHIwNMzEPOHZg8bfw9A8ElN7XJcj86IsKOGrnQspJe8esBBH
 1cAgJHipTa/c7+4aiDTe+jcZcyyzfOphFY+Be+cvvQkrlH3EhrMQPLiYssdAiYZ2rLiOzmVSY
 91wiIHYMO4N7PU1lYruPhuPnWi1E69HKFl/JjupKRaHbvyi0McmAqGs+VCH1rQLdv6uoqtT2e
 3fI3g2RXvBG1vz+YLkhDXZjbD5bCOiDU2dZ95yZZ33OWp1YgwfiISrjZX7ZA3qjY5VhSH1QU/
 GvDjuy3whxLmZqnGsgM1V1Z1PSoh46MODSvxLo50SUtT11kjKwfvZTdCEyul9aE9PV+CZ+M0U
 XGcGNZPPMU61pb8jJw3j/eJqGO2F88Wm/tE61n7czJwtw/eVRAz1wG6AH/9ZjhkKG9Hwtqbui
 r234T75MM11XUgJ0/FjK9sZFgy6oDSwYy08gn4lkgtuIZcXWJWDxELf10s1UfuBVu0SPVWasL
 wEqNypl/Q9DTjOnFAwBb4mmi1Lj0/KS8Hh/uo0y46kYgmlnzzGI2zBg7wn07o3qs83EvSfIf4
 8D0MJI5TiiNDHvD478uGCidyA8uFKrbav8CuXjwLzyJqluKFi/hB3NfJKNf5RHIjfvghLWLer
 kESbA0UPy1TEyHr1RWh9EzPdrAoBnG2AygVyUdxY5fvLmbfQcfXoJwKV8yUMZD9iD8WgwdIAi
 B5IbAmYdMOcNa9ba/E0Kgq6Muc4Ix/DkOilMsEHsVrtYcK6lh7TY/EuBfsxCI6LLbH7qLWPkx
 hX96Z7pROvLod0O+rTxUDNiG2oaame/ndg4YyQnpysJlLgStDk=
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The caller passes a variable of a different enum type:

drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c:1707:64: error: implicit conversion from enumeration type 'const enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Werror,-Wenum-conversion]
                                            binary_supports_input_format(xcandidate, req_in_info->format));

An earlier patch tried to address this by changing the type
of the function argument, but as the caller passes two different
arguments, there is still a warning.

Assume that the last patch was correct and change the other caller
as well.

Fixes: 0116b8df1c9e ("media: staging: atomisp: stop duplicating input format types")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
index 2a23b7c6aeeb..10d698295daf 100644
--- a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
+++ b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
@@ -1704,7 +1704,7 @@ ia_css_binary_find(struct ia_css_binary_descr *descr,
 			ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 					    "ia_css_binary_find() [%d] continue: !%d\n",
 					    __LINE__,
-					    binary_supports_input_format(xcandidate, req_in_info->format));
+					    binary_supports_input_format(xcandidate, descr->stream_format));
 			continue;
 		}
 #endif
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
